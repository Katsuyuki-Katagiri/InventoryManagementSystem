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

      console.log('Total rows:', data.length);
      if (data.length > 0) {
        console.log('Sample row data:', data[0]);
        console.log('Available columns:', Object.keys(data[0] || {}));
      }

      // Process each row
      for (let i = 0; i < data.length; i++) {
        const row = data[i] as any;
        try {
          // Skip empty rows
          if (!row || Object.keys(row).length === 0) {
            console.log(`Skipping empty row ${i + 1}`);
            continue;
          }

          console.log(`Processing row ${i + 1}:`, row);

          // Map Excel columns based on your template structure
          const productData = {
            productCode: String(row['商品コード'] || '').trim(),
            genericName: String(row['商品名'] || row['メラ商品名'] || '').trim(),
            commercialName: String(row['販売名'] || '').trim(),
            specification: String(row['規格'] || '').trim(),
            category: String(row['品種名'] || '医療機器').trim(),
            assetClassification: String(row['資産分類名'] || '').trim(),
            price: "0", // Default price since not in Excel data
            lowStockThreshold: 10,
            isActive: 1
          };

          console.log(`Mapped product data:`, productData);

          // Validate required fields
          if (!productData.genericName) {
            results.errors.push(`行 ${i + 2}: 製品名は必須です (製品名列が空です)`);
            continue;
          }
          
          if (!productData.productCode) {
            results.errors.push(`行 ${i + 2}: 商品コードは必須です (商品コード列が空です)`);
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
          
          // Create inventory record with month-end total from your Excel data
          const monthEndQuantity = parseInt(String(row['当月末総在庫数'] || row['当月末在庫数合計'] || '0'));
          
          if (monthEndQuantity > 0) {
            const inventoryData = {
              productId: newProduct.id,
              departmentId: 1, // Default department - will map from 部門コード later
              quantity: monthEndQuantity, // Use month-end total inventory
              lotNumber: String(row['ロット番号'] || '-'),
              expiryDate: row['有効期限'] ? new Date(row['有効期限']) : null,
              storageLocation: String(row['事業所名'] || ''), // Use facility as storage location
              shipmentDate: null,
              shipmentNumber: null,
              facilityName: String(row['事業所名'] || ''),
              responsiblePerson: String(row['部門名'] || ''),
              remarks: null,
              inventoryMonth: "2025-04", // April 2025 from your data
            };
            
            await db.insert(inventory).values(inventoryData);
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
