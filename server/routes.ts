import express, { type Express, type Request, type Response } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { insertProductSchema, updateProductSchema, inventory } from "@shared/schema";
import { z } from "zod";
import multer from "multer";
import * as XLSX from "xlsx";
import { db } from "./db";

export async function registerRoutes(app: Express): Promise<Server> {
  // Configure multer for file uploads
  const upload = multer({ 
    storage: multer.memoryStorage(),
    fileFilter: (req, file, cb) => {
      // Accept Excel files only
      if (file.mimetype === 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' || 
          file.mimetype === 'application/vnd.ms-excel' ||
          file.originalname.endsWith('.xlsx') || 
          file.originalname.endsWith('.xls')) {
        cb(null, true);
      } else {
        cb(new Error('Only Excel files are allowed'));
      }
    },
    limits: {
      fileSize: 5 * 1024 * 1024 // 5MB limit
    }
  });
  // Get all products
  app.get("/api/products", async (req, res) => {
    try {
      const { search, category } = req.query;
      
      let products;
      if (search) {
        products = await storage.searchProducts(search as string);
      } else if (category) {
        products = await storage.getProductsByCategory(category as string);
      } else {
        products = await storage.getProducts();
      }
      
      res.json(products);
    } catch (error) {
      console.error("Error fetching products:", error);
      res.status(500).json({ message: "Failed to fetch products" });
    }
  });

  // Get inventory statistics
  app.get("/api/inventory/stats", async (req, res) => {
    try {
      const stats = await storage.getInventoryStats();
      res.json(stats);
    } catch (error) {
      console.error("Error fetching inventory stats:", error);
      res.status(500).json({ message: "Failed to fetch inventory statistics" });
    }
  });

  // Get low stock products
  app.get("/api/products/low-stock", async (req, res) => {
    try {
      const lowStockProducts = await storage.getLowStockProducts();
      res.json(lowStockProducts);
    } catch (error) {
      console.error("Error fetching low stock products:", error);
      res.status(500).json({ message: "Failed to fetch low stock products" });
    }
  });

  // Get product by ID
  app.get("/api/products/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      if (isNaN(id)) {
        return res.status(400).json({ message: "Invalid product ID" });
      }

      const product = await storage.getProductById(id);
      if (!product) {
        return res.status(404).json({ message: "Product not found" });
      }

      res.json(product);
    } catch (error) {
      console.error("Error fetching product:", error);
      res.status(500).json({ message: "Failed to fetch product" });
    }
  });

  // Create new product
  app.post("/api/products", async (req, res) => {
    try {
      const validatedData = insertProductSchema.parse(req.body);
      
      // Check if product code already exists
      const existingProduct = await storage.getProductByCode(validatedData.productCode);
      if (existingProduct) {
        return res.status(409).json({ message: "Product with this code already exists" });
      }

      const product = await storage.createProduct(validatedData);
      res.status(201).json(product);
    } catch (error) {
      if (error instanceof z.ZodError) {
        return res.status(400).json({ 
          message: "Validation failed", 
          errors: error.errors 
        });
      }
      console.error("Error creating product:", error);
      res.status(500).json({ message: "Failed to create product" });
    }
  });

  // Update product
  app.put("/api/products/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      if (isNaN(id)) {
        return res.status(400).json({ message: "Invalid product ID" });
      }

      const validatedData = updateProductSchema.parse(req.body);
      
      // If updating product code, check if it's already taken by another product
      if (validatedData.productCode) {
        const existingProduct = await storage.getProductByCode(validatedData.productCode);
        if (existingProduct && existingProduct.id !== id) {
          return res.status(409).json({ message: "Product with this code already exists" });
        }
      }

      const updatedProduct = await storage.updateProduct(id, validatedData);
      if (!updatedProduct) {
        return res.status(404).json({ message: "Product not found" });
      }

      res.json(updatedProduct);
    } catch (error) {
      if (error instanceof z.ZodError) {
        return res.status(400).json({ 
          message: "Validation failed", 
          errors: error.errors 
        });
      }
      console.error("Error updating product:", error);
      res.status(500).json({ message: "Failed to update product" });
    }
  });

  // Delete product
  app.delete("/api/products/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      if (isNaN(id)) {
        return res.status(400).json({ message: "Invalid product ID" });
      }

      const deleted = await storage.deleteProduct(id);
      if (!deleted) {
        return res.status(404).json({ message: "Product not found" });
      }

      res.status(204).send();
    } catch (error) {
      console.error("Error deleting product:", error);
      res.status(500).json({ message: "Failed to delete product" });
    }
  });

  // Debug route to analyze Excel file structure
  app.post("/api/products/analyze", upload.single('file'), async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({ message: "Excelファイルが必要です" });
      }

      const workbook = XLSX.read(req.file.buffer, { type: 'buffer' });
      const sheetName = workbook.SheetNames[0];
      const worksheet = workbook.Sheets[sheetName];
      const data = XLSX.utils.sheet_to_json(worksheet, { header: 1 });
      const jsonData = XLSX.utils.sheet_to_json(worksheet);

      res.json({
        sheetNames: workbook.SheetNames,
        totalRows: data.length,
        headers: data[0] || [],
        sampleRows: data.slice(1, 4),
        sampleData: jsonData.slice(0, 3),
        columnMapping: {
          detected: Object.keys(jsonData[0] || {}),
          supported: [
            '商品コード', '一般名', '販売名', 'カテゴリー', '規格', '資産分類', '価格', '最小在庫',
            'productCode', 'genericName', 'commercialName', 'category', 'specification', 'assetClassification', 'price', 'lowStockThreshold'
          ]
        }
      });
    } catch (error: any) {
      console.error("Error analyzing Excel file:", error);
      res.status(500).json({ message: "ファイル解析エラー", error: error.message });
    }
  });

  // Excel import endpoint
  app.post("/api/products/import", upload.single('file'), async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({ message: "Excelファイルが必要です" });
      }

      let data: any[] = [];
      
      try {
        // Parse Excel file
        const workbook = XLSX.read(req.file.buffer, { type: 'buffer' });
        const sheetName = workbook.SheetNames[0];
        if (!sheetName) {
          return res.status(400).json({ message: "Excelファイルにシートが見つかりません" });
        }
        
        const worksheet = workbook.Sheets[sheetName];
        data = XLSX.utils.sheet_to_json(worksheet);
        
        if (data.length === 0) {
          return res.status(400).json({ message: "Excelファイルにデータが見つかりません" });
        }
      } catch (parseError: any) {
        console.error("Excel parsing error:", parseError);
        return res.status(400).json({ 
          message: "Excelファイルの解析に失敗しました",
          error: parseError.message 
        });
      }

      const results = {
        success: 0,
        errors: [] as string[],
        imported: [] as any[]
      };

      // Process each row
      for (let i = 0; i < data.length; i++) {
        const row = data[i] as any;
        try {
          // Skip empty rows
          if (!row || Object.keys(row).length === 0) {
            continue;
          }

          // Map Excel columns to medical device schema with comprehensive column name support
          const productData = {
            productCode: String(row['商品コード'] || row['productCode'] || row['コード'] || row['SKU'] || row['Product Code'] || 
                               row['商品番号'] || row['品番'] || row['Item Code'] || row['製品コード'] || '').trim(),
            genericName: String(row['一般名'] || row['genericName'] || row['商品名'] || row['name'] || row['Name'] || 
                               row['Generic Name'] || row['品名'] || row['製品名'] || row['Product Name'] || 
                               row['医療機器名'] || row['機器名'] || '').trim(),
            commercialName: String(row['販売名'] || row['commercialName'] || row['Commercial Name'] || row['販売名称'] || 
                                  row['商品名'] || row['Trade Name'] || '').trim(),
            specification: String(row['規格'] || row['specification'] || row['仕様'] || row['Specification'] || row['specs'] || 
                                 row['サイズ'] || row['Size'] || row['型番'] || row['Model'] || '').trim(),
            category: String(row['カテゴリー'] || row['category'] || row['Category'] || row['分類'] || row['カテゴリ'] || 
                           row['種別'] || row['Type'] || row['区分'] || row['Classification'] || '').trim(),
            assetClassification: String(row['資産分類'] || row['assetClassification'] || row['Asset Classification'] || 
                                       row['資産'] || row['Asset Type'] || row['管理区分'] || '').trim(),
            price: String(row['価格'] || row['price'] || row['Price'] || row['単価'] || row['Unit Price'] || 
                         row['金額'] || row['Amount'] || row['Cost'] || '0').replace(/[^0-9.-]/g, '') || '0',
            lowStockThreshold: parseInt(String(row['最小在庫'] || row['lowStockThreshold'] || row['最小数量'] || 
                                              row['Low Stock'] || row['安全在庫'] || row['最小値'] || '10').replace(/[^0-9]/g, '')) || 10
          };

          // Validate required fields
          if (!productData.genericName) {
            results.errors.push(`行 ${i + 2}: 一般名は必須です (列: 一般名, genericName, 商品名, name のいずれか)`);
            continue;
          }
          
          if (!productData.productCode) {
            results.errors.push(`行 ${i + 2}: 商品コードは必須です (列: 商品コード, productCode, コード, SKU のいずれか)`);
            continue;
          }

          if (!productData.category) {
            results.errors.push(`行 ${i + 2}: カテゴリーは必須です (列: カテゴリー, category, Category, 分類 のいずれか)`);
            continue;
          }

          // Set default commercial name if not provided
          if (!productData.commercialName) {
            productData.commercialName = productData.genericName;
          }

          // Check if product code already exists  
          const existingProduct = await storage.getProductByCode(productData.productCode);
          if (existingProduct) {
            results.errors.push(`行 ${i + 2}: 商品コード "${productData.productCode}" は既に存在します`);
            continue;
          }

          // Validate the data using schema
          const validatedData = insertProductSchema.parse(productData);
          
          // Create the product
          const newProduct = await storage.createProduct(validatedData);
          
          // Create inventory record with monthly tracking
          // Calculate month-end total inventory from all entries for this product
          const monthEndQuantity = parseInt(row['在庫数'] || row['数量'] || row['quantity'] || '0');
          
          if (monthEndQuantity > 0) {
            const inventoryData = {
              productId: newProduct.id,
              departmentId: 1, // Default department
              quantity: monthEndQuantity,
              lotNumber: row['LOT'] || row['ロット番号'] || '-',
              expiryDate: row['UBD'] || row['有効期限'] ? new Date(row['UBD'] || row['有効期限']) : null,
              storageLocation: row['保管場所'] || row['storage_location'] || null,
              shipmentDate: row['出荷伝票日付'] || row['shipment_date'] ? new Date(row['出荷伝票日付'] || row['shipment_date']) : null,
              shipmentNumber: row['出荷伝票№'] || row['shipment_number'] || null,
              facilityName: row['施設名'] || row['facility_name'] || null,
              responsiblePerson: row['担当者名'] || row['responsible_person'] || null,
              remarks: row['備考'] || row['remarks'] || null,
              inventoryMonth: "2025-04", // Default to April 2025
            };
            
            await storage.createInventory(inventoryData);
          }
          
          results.success++;
          results.imported.push(newProduct);

        } catch (error: any) {
          console.error(`Row ${i + 2} processing error:`, error);
          if (error instanceof z.ZodError) {
            const fieldErrors = error.errors.map(e => `${e.path.join('.')}: ${e.message}`).join(', ');
            results.errors.push(`行 ${i + 2}: バリデーションエラー - ${fieldErrors}`);
          } else {
            results.errors.push(`行 ${i + 2}: ${error.message || 'データの処理中にエラーが発生しました'}`);
          }
        }
      }

      res.json({
        message: `${results.success}件の医療機器をインポートしました`,
        success: results.success,
        errors: results.errors,
        imported: results.imported,
        total: data.length
      });

    } catch (error: any) {
      console.error("Error importing Excel file:", error);
      res.status(500).json({ 
        message: "Excelファイルの処理中にエラーが発生しました",
        error: error.message 
      });
    }
  });

  // Get detailed inventory data with product information
  app.get("/api/inventory/detailed", async (req: Request, res: Response) => {
    try {
      const month = req.query.month as string;
      const inventoryData = await storage.getDetailedInventoryData(month);
      res.json(inventoryData);
    } catch (error) {
      console.error("Error getting detailed inventory:", error);
      res.status(500).json({ error: "詳細在庫データの取得に失敗しました" });
    }
  });

  // Update inventory item
  app.patch("/api/inventory/:id", async (req: Request, res: Response) => {
    try {
      const id = parseInt(req.params.id);
      const updates = req.body;
      const updatedItem = await storage.updateInventoryItem(id, updates);
      if (!updatedItem) {
        return res.status(404).json({ error: "在庫アイテムが見つかりません" });
      }
      res.json(updatedItem);
    } catch (error) {
      console.error("Error updating inventory:", error);
      res.status(500).json({ error: "在庫の更新に失敗しました" });
    }
  });

  // Department routes
  app.get("/api/departments", async (req: Request, res: Response) => {
    try {
      const departments = await storage.getDepartments();
      res.json(departments);
    } catch (error) {
      console.error("Error getting departments:", error);
      res.status(500).json({ error: "部門の取得に失敗しました" });
    }
  });

  app.get("/api/departments/:id", async (req: Request, res: Response) => {
    try {
      const id = parseInt(req.params.id);
      const department = await storage.getDepartmentById(id);
      if (!department) {
        return res.status(404).json({ error: "部門が見つかりません" });
      }
      res.json(department);
    } catch (error) {
      console.error("Error getting department:", error);
      res.status(500).json({ error: "部門の取得に失敗しました" });
    }
  });

  app.get("/api/facilities/:facilityId/departments", async (req: Request, res: Response) => {
    try {
      const facilityId = parseInt(req.params.facilityId);
      const departments = await storage.getDepartmentsByFacility(facilityId);
      res.json(departments);
    } catch (error) {
      console.error("Error getting departments by facility:", error);
      res.status(500).json({ error: "施設の部門取得に失敗しました" });
    }
  });

  // Facility routes
  app.get("/api/facilities", async (req: Request, res: Response) => {
    try {
      const facilities = await storage.getFacilities();
      res.json(facilities);
    } catch (error) {
      console.error("Error getting facilities:", error);
      res.status(500).json({ error: "施設の取得に失敗しました" });
    }
  });

  app.get("/api/facilities/:id", async (req: Request, res: Response) => {
    try {
      const id = parseInt(req.params.id);
      const facility = await storage.getFacilityById(id);
      if (!facility) {
        return res.status(404).json({ error: "施設が見つかりません" });
      }
      res.json(facility);
    } catch (error) {
      console.error("Error getting facility:", error);
      res.status(500).json({ error: "施設の取得に失敗しました" });
    }
  });

  const httpServer = createServer(app);
  return httpServer;
}
