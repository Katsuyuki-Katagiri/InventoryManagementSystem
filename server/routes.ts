
import express, { type Express, type Request, type Response } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { z } from "zod";
import multer from "multer";
import * as XLSX from "xlsx";
import { db } from "./db";
import { products, inventory, departments, facilities, insertProductSchema } from '../shared/schema';
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

      let productsData;
      if (search) {
        productsData = await storage.searchProducts(search as string);
      } else if (category) {
        productsData = await storage.getProductsByCategory(category as string);
      } else {
        productsData = await storage.getProducts();
      }

      res.json(productsData);
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

  // Create product with inventory data
  app.post("/api/products/with-inventory", async (req, res) => {
    try {
      const { product: productData, inventory: inventoryData } = req.body;
      
      // Validate product data
      const validatedProductData = insertProductSchema.parse(productData);
      
      // Check if product code already exists
      const existingProduct = await storage.getProductByCode(validatedProductData.productCode);
      if (existingProduct) {
        return res.status(409).json({ message: "Product with this code already exists" });
      }
      
      // Create the product first
      const newProduct = await storage.createProduct(validatedProductData);
      
      // If inventory data is provided and quantity > 0, create inventory record
      if (inventoryData && inventoryData.quantity > 0) {
        const inventoryRecord = {
          productId: newProduct.id,
          departmentId: 1, // Default department
          quantity: inventoryData.quantity,
          lotNumber: inventoryData.lotNumber || '',
          expiryDate: inventoryData.expiryDate ? inventoryData.expiryDate : null,
          storageLocation: inventoryData.storageLocation || '',
          shipmentDate: null,
          shipmentNumber: null,
          facilityName: inventoryData.facilityName || '',
          responsiblePerson: inventoryData.responsiblePerson || '',
          remarks: inventoryData.remarks || '',
          inventoryMonth: "2025-04",
          receivedDate: null,
        };
        
        await storage.createInventory(inventoryRecord);
      }
      
      res.status(201).json({
        product: newProduct,
        message: "製品と在庫が正常に作成されました"
      });
    } catch (error) {
      if (error instanceof z.ZodError) {
        return res.status(400).json({ 
          message: "バリデーションに失敗しました", 
          errors: error.errors 
        });
      }
      console.error("Error creating product with inventory:", error);
      res.status(500).json({ message: "製品の作成に失敗しました" });
    }
  });

  // Update product
  app.put("/api/products/:id", async (req, res) => {
    try {
      const id = parseInt(req.params.id);
      if (isNaN(id)) {
        return res.status(400).json({ message: "Invalid product ID" });
      }

      const validatedData = insertProductSchema.partial().parse(req.body);

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

  // Loan data import endpoint
  app.post("/api/products/import-loan", upload.single('file'), async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({ message: "Excelファイルが必要です" });
      }

      console.log('Loan file received:', req.file.originalname, 'Size:', req.file.size);

      const workbook = XLSX.read(req.file.buffer, { type: 'buffer' });
      const sheetName = workbook.SheetNames[0];
      const worksheet = workbook.Sheets[sheetName];
      const data = XLSX.utils.sheet_to_json(worksheet);

      let updated = 0;
      let errors: string[] = [];

      for (let i = 0; i < data.length; i++) {
        const row = data[i] as any;
        
        try {
          const productCode = row['商品コード'] || '';
          const lotNumber = row['LOT'] || row['ロット番号'] || '';
          const expiryDate = row['UBD'] || row['有効期限'] || '';
          const shipmentDate = row['貸出日'] || row['出荷日'] || row['出荷伝票日付'] || '';
          const shipmentNumber = row['貸出番号'] || row['出荷番号'] || row['出荷伝票№'] || '';
          const facilityName = row['施設名'] || '';
          const responsiblePerson = row['担当者'] || row['担当者名'] || '';

          if (!productCode) continue;

          // Find matching inventory items by product code and lot number
          const matchingInventory = await db
            .select()
            .from(inventory)
            .innerJoin(products, eq(inventory.productId, products.id))
            .where(
              and(
                eq(products.productCode, productCode),
                eq(inventory.lotNumber, lotNumber)
              )
            );

          if (matchingInventory.length > 0) {
            const inventoryRecord = matchingInventory[0];
            
            // Update inventory item with loan information
            await db
              .update(inventory)
              .set({
                shipmentDate: shipmentDate ? new Date(shipmentDate) : null,
                shipmentNumber: shipmentNumber || null,
                facilityName: facilityName || null,
                responsiblePerson: responsiblePerson || null,
              })
              .where(eq(inventory.id, inventoryRecord.inventory.id));

            updated++;
            console.log(`Updated inventory for ${productCode}, lot ${lotNumber}`);
          } else {
            console.log(`No matching inventory found for ${productCode}, lot ${lotNumber}`);
          }
        } catch (error: any) {
          console.error(`Row ${i + 2} processing error:`, error);
          errors.push(`行 ${i + 2}: ${error.message}`);
        }
      }

      res.json({
        success: updated,
        errors,
        message: `${updated}件の貸出情報を更新しました`,
        total: data.length
      });

    } catch (error: any) {
      console.error('貸出データインポートエラー:', error);
      res.status(500).json({ message: '貸出データのインポートに失敗しました' });
    }
  });

  // Excel import endpoint
  app.post("/api/products/import", upload.single('file'), async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({ message: "Excelファイルが必要です" });
      }

      console.log('File received:', req.file.originalname, 'Size:', req.file.size);

      // Ensure default facility exists
      const defaultFacilities = await db.select().from(facilities).limit(1);
      if (defaultFacilities.length === 0) {
        console.log('Creating default facility...');
        await db.insert(facilities).values({
          facilityCode: '0700',
          facilityName: 'デフォルト事業所',
          isActive: 1
        });
        console.log('Default facility created');
      }

      let data: any[] = [];

      try {
        // Parse Excel file with comprehensive options
        const workbook = XLSX.read(req.file.buffer, { 
          type: 'buffer',
          cellDates: true,
          cellStyles: false,
          sheetStubs: false,
          raw: false,
          codepage: 65001 // UTF-8
        });

        const sheetName = workbook.SheetNames[0];
        if (!sheetName) {
          return res.status(400).json({ message: "Excelファイルにシートが見つかりません" });
        }

        console.log('Available sheets:', workbook.SheetNames);
        console.log('Processing sheet:', sheetName);

        const worksheet = workbook.Sheets[sheetName];

        // First try with JSON conversion to get column names
        const jsonData = XLSX.utils.sheet_to_json(worksheet, {
          defval: "",
          blankrows: false,
          raw: false
        });

        console.log('Raw JSON data length:', jsonData.length);

        if (jsonData.length === 0) {
          return res.status(400).json({ message: "Excelファイルにデータが見つかりません" });
        }

        // Log detected columns
        const detectedColumns = Object.keys(jsonData[0] || {});
        console.log('Detected columns:', detectedColumns);

        data = jsonData;

      } catch (parseError: any) {
        console.error("Excel parsing error:", parseError);
        return res.status(400).json({ 
          message: "Excelファイルの解析に失敗しました",
          error: parseError.message,
          details: "ファイル形式を確認してください。Excel 2007以降の.xlsxファイルが推奨です。"
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

          // Enhanced column mapping with more variations
          const findColumnValue = (row: any, ...columnNames: string[]): string => {
            for (const colName of columnNames) {
              if (row[colName] !== undefined && row[colName] !== null && row[colName] !== '') {
                return String(row[colName]).trim();
              }
            }
            return '';
          };

          const productData = {
            productCode: findColumnValue(row, 
              '商品コード', '製品コード', 'コード', 'SKU', 'Product Code', 
              '品目コード', 'アイテムコード', '商品番号'
            ),
            genericName: findColumnValue(row,
              'メラ商品名', '商品名', '製品名', '一般名', 'Product Name',
              '品名', '商品', '医療機器名', '機器名', '名称'
            ),
            commercialName: findColumnValue(row,
              '販売名', '商品名', '製品名', 'Commercial Name',
              'ブランド名', '型番', 'Model'
            ),
            specification: findColumnValue(row,
              '規格', '仕様', 'Specification', 'Spec', 
              'サイズ', '型式', '単位'
            ),
            category: findColumnValue(row,
              '品種名', 'カテゴリ', '分類', 'Category', 
              '種別', 'タイプ', '品目分類', '機器分類'
            ) || '医療機器',
            assetClassification: findColumnValue(row,
              '資産分類名', '資産分類', 'Asset Classification',
              '固定資産', '資産区分'
            ),
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

          // Enhanced quantity extraction with more column variations
          const quantityStr = findColumnValue(row,
            '当月末総在庫数', '当月末在庫数合計', '在庫数', '在庫量', 'Quantity',
            '数量', '個数', '本数', '枚数', '総在庫', '現在庫'
          );

          console.log(`Row ${i + 1} quantity extraction:`, {
            rawValue: quantityStr,
            availableColumns: Object.keys(row)
          });

          const monthEndQuantity = parseInt(quantityStr.replace(/[^\d]/g, '')) || 0;
          const lotNumber = findColumnValue(row,
            'ロット番号', 'ロット', 'Lot Number', 'LOT', 
            'バッチ番号', 'Batch', 'ロット・番号'
          ) || '-';

          // Enhanced expiry date extraction
          let expiryDate = null;
          const expiryValue = findColumnValue(row,
            '有効期限', '使用期限', 'Expiry Date', 'Expiration Date',
            '期限', '満了日', '失効日'
          );

          if (expiryValue && expiryValue !== '-') {
            try {
              if (expiryValue instanceof Date) {
                expiryDate = expiryValue;
              } else if (typeof expiryValue === 'number') {
                // Excel date serial number
                expiryDate = new Date((Number(expiryValue) - 25569) * 86400 * 1000);
              } else {
                // Try parsing as string
                const dateStr = String(expiryValue);
                expiryDate = new Date(dateStr);
              }
              // Check if date is valid
              if (isNaN(expiryDate.getTime())) {
                console.log(`Invalid expiry date for row ${i + 2}:`, expiryValue);
                expiryDate = null;
              } else {
                console.log(`Parsed expiry date for row ${i + 2}:`, expiryDate);
              }
            } catch (e) {
              console.log(`Error parsing expiry date for row ${i + 2}:`, expiryValue, e);
              expiryDate = null;
            }
          }

          // Get or create facility and department based on the Excel data
          const departmentCode = String(row['部門コード'] || '0701');
          const departmentName = String(row['部門名'] || 'デフォルト部門');
          const facilityCode = String(row['事業所コード'] || '0700');
          const facilityName = String(row['事業所名'] || 'デフォルト事業所');

          console.log(`Processing facility: ${facilityName} (${facilityCode}), department: ${departmentName} (${departmentCode})`);

          // First, get or create facility
          let existingFacility = await db
            .select()
            .from(facilities)
            .where(eq(facilities.facilityCode, facilityCode))
            .limit(1);

          let facilityId: number;
          if (existingFacility.length === 0) {
            // Create new facility
            console.log(`Creating new facility: ${facilityName} (${facilityCode})`);
            const newFacility = await db
              .insert(facilities)
              .values({
                facilityCode: facilityCode,
                facilityName: facilityName,
                isActive: 1
              })
              .returning();
            facilityId = newFacility[0].id;
            console.log(`Created new facility with ID: ${facilityId}`);
          } else {
            facilityId = existingFacility[0].id;
            console.log(`Using existing facility ID: ${facilityId}`);
          }

          // Now get or create department
          let existingDepartment = await db
            .select()
            .from(departments)
            .where(and(
              eq(departments.departmentCode, departmentCode),
              eq(departments.facilityId, facilityId)
            ))
            .limit(1);

          let departmentId: number;
          if (existingDepartment.length === 0) {
            // Create new department
            console.log(`Creating new department: ${departmentName} (${departmentCode}) for facility ${facilityId}`);
            const newDepartment = await db
              .insert(departments)
              .values({
                departmentCode: departmentCode,
                departmentName: departmentName,
                facilityId: facilityId,
                isActive: 1
              })
              .returning();
            departmentId = newDepartment[0].id;
            console.log(`Created new department with ID: ${departmentId}`);
          } else {
            departmentId = existingDepartment[0].id;
            console.log(`Using existing department ID: ${departmentId}`);
          }

          // Check if this exact inventory record (product + lot + expiry) already exists
          let existingInventory;
          
          if (expiryDate) {
            existingInventory = await db
              .select()
              .from(inventory)
              .where(and(
                eq(inventory.productId, productToUse.id),
                eq(inventory.lotNumber, lotNumber),
                eq(inventory.expiryDate, expiryDate)
              ));
          } else {
            existingInventory = await db
              .select()
              .from(inventory)
              .where(and(
                eq(inventory.productId, productToUse.id),
                eq(inventory.lotNumber, lotNumber),
                sql`${inventory.expiryDate} IS NULL`
              ));
          }

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
            // Create new inventory record with enhanced field mapping
            const inventoryData = {
              productId: productToUse.id,
              departmentId: departmentId,
              quantity: monthEndQuantity,
              lotNumber: lotNumber,
              expiryDate: expiryDate,
              storageLocation: findColumnValue(row,
                '事業所名', '保管場所', 'Storage Location', '場所',
                '倉庫', '保管先', '施設名'
              ),
              receivedDate: null
            };

            console.log(`Creating inventory record for ${productData.productCode}:`, {
              quantity: monthEndQuantity,
              lotNumber: lotNumber,
              expiryDate: expiryDate,
              storageLocation: inventoryData.storageLocation
            });

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
          console.error('Error details:', {
            code: error.code,
            detail: error.detail,
            constraint: error.constraint,
            table: error.table
          });
          
          if (error instanceof z.ZodError) {
            const fieldErrors = error.errors.map(e => `${e.path.join('.')}: ${e.message}`).join(', ');
            results.errors.push(`行 ${i + 2}: バリデーションエラー - ${fieldErrors}`);
          } else if (error.code === '23503') {
            // Foreign key constraint violation
            results.errors.push(`行 ${i + 2}: データベース制約エラー - 関連するマスターデータが見つかりません (${error.detail})`);
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
