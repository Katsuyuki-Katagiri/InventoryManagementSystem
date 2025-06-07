import express, { type Express, type Request, type Response } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { insertProductSchema, updateProductSchema, inventory } from "@shared/schema";
import { z } from "zod";
import multer from "multer";
import * as XLSX from "xlsx";
import { db } from "./db";
import { eq, and, sql } from "drizzle-orm";

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
        // Parse Excel file with better options
        const workbook = XLSX.read(req.file.buffer, { 
          type: 'buffer',
          cellDates: true,
          cellStyles: false,
          sheetStubs: false
        });
        
        const sheetName = workbook.SheetNames[0];
        if (!sheetName) {
          return res.status(400).json({ message: "Excelファイルにシートが見つかりません" });
        }
        
        console.log('Available sheets:', workbook.SheetNames);
        
        const worksheet = workbook.Sheets[sheetName];
        
        // Convert with header row detection
        data = XLSX.utils.sheet_to_json(worksheet, {
          header: 1,
          defval: "",
          blankrows: false
        });
        
        // Convert to object format using first row as headers
        if (data.length > 1) {
          const headers = data[0] as string[];
          const rows = data.slice(1);
          data = rows.map(row => {
            const obj: any = {};
            headers.forEach((header, index) => {
              obj[header] = (row as any[])[index] || '';
            });
            return obj;
          });
        }
        
        console.log('Parsed Excel data length:', data.length);
        if (data.length > 0) {
          console.log('Sample headers:', Object.keys(data[0]));
          console.log('First row sample:', data[0]);
        }
        
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

          // Map Excel columns based on your template structure - support multiple column name variations
          const productData = {
            productCode: String(row['商品コード'] || row['製品コード'] || row['コード'] || '').trim(),
            genericName: String(row['商品名'] || row['メラ商品名'] || row['製品名'] || row['一般名'] || '').trim(),
            commercialName: String(row['販売名'] || row['商品名'] || row['製品名'] || '').trim(),
            specification: String(row['規格'] || row['仕様'] || '').trim(),
            category: String(row['品種名'] || row['カテゴリ'] || row['分類'] || '医療機器').trim(),
            assetClassification: String(row['資産分類名'] || row['資産分類'] || '').trim(),
            price: "0",
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
          let existingProduct = await storage.getProductByCode(productData.productCode);
          let productToUse;
          
          if (existingProduct) {
            // Product already exists, use the existing product
            productToUse = existingProduct;
            console.log(`Product ${productData.productCode} already exists, using existing product ID: ${existingProduct.id}`);
          } else {
            // Validate the data using schema
            const validatedData = insertProductSchema.parse(productData);
            
            // Create new product
            productToUse = await storage.createProduct(validatedData);
            console.log(`Created new product ${productData.productCode} with ID: ${productToUse.id}`);
          }
          
          // Always create inventory record for each lot/expiry combination
          const quantityStr = String(row['当月末総在庫数'] || row['当月末在庫数合計'] || row['在庫数'] || '0');
          const monthEndQuantity = parseInt(quantityStr.replace(/[^\d]/g, '')) || 0; // Remove non-numeric characters
          const lotNumber = String(row['ロット番号'] || row['ロット'] || '-');
          
          let expiryDate = null;
          if (row['有効期限']) {
            try {
              const dateValue = row['有効期限'];
              if (dateValue instanceof Date) {
                expiryDate = dateValue;
              } else if (typeof dateValue === 'number') {
                // Excel date serial number
                expiryDate = new Date((dateValue - 25569) * 86400 * 1000);
              } else {
                expiryDate = new Date(dateValue);
              }
              // Check if date is valid
              if (isNaN(expiryDate.getTime())) {
                expiryDate = null;
              }
            } catch (e) {
              console.log(`Invalid expiry date for row ${i + 2}:`, row['有効期限']);
              expiryDate = null;
            }
          }
          
          // Check if this exact inventory record (product + lot + expiry) already exists
          let whereConditions = [
            eq(inventory.productId, productToUse.id),
            eq(inventory.lotNumber, lotNumber)
          ];
          
          if (expiryDate) {
            whereConditions.push(eq(inventory.expiryDate, expiryDate));
          } else {
            whereConditions.push(sql`${inventory.expiryDate} IS NULL`);
          }
          
          const existingInventory = await db
            .select()
            .from(inventory)
            .where(and(...whereConditions));
          
          // Skip if quantity is 0 or negative
          if (monthEndQuantity <= 0) {
            console.log(`Skipping row ${i + 2}: quantity is ${monthEndQuantity}`);
            continue;
          }

          if (existingInventory.length > 0) {
            // Update existing inventory quantity
            const currentQuantity = existingInventory[0].quantity || 0;
            const newQuantity = currentQuantity + monthEndQuantity;
            
            await db
              .update(inventory)
              .set({ 
                quantity: newQuantity,
                updatedAt: new Date()
              })
              .where(eq(inventory.id, existingInventory[0].id));
              
            console.log(`Updated inventory for product ${productData.productCode}, lot ${lotNumber}: ${currentQuantity} + ${monthEndQuantity} = ${newQuantity}`);
          } else {
            // Create new inventory record
            const inventoryData = {
              productId: productToUse.id,
              departmentId: 1, // Default department
              quantity: monthEndQuantity,
              lotNumber: lotNumber,
              expiryDate: expiryDate,
              storageLocation: String(row['事業所名'] || row['保管場所'] || ''),
              shipmentDate: null,
              shipmentNumber: null,
              facilityName: String(row['事業所名'] || ''),
              responsiblePerson: String(row['部門名'] || row['担当者'] || ''),
              remarks: String(row['備考'] || row['メモ'] || '').trim() || null,
              inventoryMonth: "2025-04",
            };
            
            try {
              await db.insert(inventory).values(inventoryData);
              console.log(`Created new inventory record for product ${productData.productCode}, lot ${lotNumber}, quantity: ${monthEndQuantity}`);
            } catch (inventoryError: any) {
              console.error(`Failed to create inventory record for ${productData.productCode}:`, inventoryError);
              results.errors.push(`行 ${i + 2}: 在庫レコード作成エラー - ${inventoryError.message}`);
              continue;
            }
          }
          
          results.success++;
          if (!existingProduct) {
            results.imported.push(productToUse);
          }

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
