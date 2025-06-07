import type { Express } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { insertProductSchema, updateProductSchema } from "@shared/schema";
import { z } from "zod";
import multer from "multer";
import * as XLSX from "xlsx";

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
      
      // Check if SKU already exists
      const existingProduct = await storage.getProductBySku(validatedData.sku);
      if (existingProduct) {
        return res.status(409).json({ message: "Product with this SKU already exists" });
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
      
      // If updating SKU, check if it's already taken by another product
      if (validatedData.sku) {
        const existingProduct = await storage.getProductBySku(validatedData.sku);
        if (existingProduct && existingProduct.id !== id) {
          return res.status(409).json({ message: "Product with this SKU already exists" });
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

  // Excel import endpoint
  app.post("/api/products/import", upload.single('file'), async (req, res) => {
    try {
      if (!req.file) {
        return res.status(400).json({ message: "Excelファイルが必要です" });
      }

      // Parse Excel file
      const workbook = XLSX.read(req.file.buffer, { type: 'buffer' });
      const sheetName = workbook.SheetNames[0];
      const worksheet = workbook.Sheets[sheetName];
      const data = XLSX.utils.sheet_to_json(worksheet);

      const results = {
        success: 0,
        errors: [] as string[],
        imported: [] as any[]
      };

      // Process each row
      for (let i = 0; i < data.length; i++) {
        const row = data[i] as any;
        try {
          // Map Excel columns to our schema (flexible column mapping)
          const productData = {
            name: row['商品名'] || row['name'] || row['Name'] || row['製品名'],
            sku: row['SKU'] || row['sku'] || row['商品コード'] || row['コード'],
            category: row['カテゴリー'] || row['category'] || row['Category'] || row['分類'],
            quantity: parseInt(row['在庫数'] || row['quantity'] || row['Quantity'] || row['数量']) || 0,
            price: String(row['価格'] || row['price'] || row['Price'] || row['単価'] || 0),
            description: row['説明'] || row['description'] || row['Description'] || row['備考'] || "",
            lowStockThreshold: parseInt(row['最小在庫'] || row['lowStockThreshold'] || row['最小数量']) || 10
          };

          // Validate required fields
          if (!productData.name || !productData.sku) {
            results.errors.push(`行 ${i + 2}: 商品名とSKUは必須です`);
            continue;
          }

          // Check if SKU already exists
          const existingProduct = await storage.getProductBySku(productData.sku);
          if (existingProduct) {
            results.errors.push(`行 ${i + 2}: SKU "${productData.sku}" は既に存在します`);
            continue;
          }

          // Validate the data using schema
          const validatedData = insertProductSchema.parse(productData);
          
          // Create the product
          const newProduct = await storage.createProduct(validatedData);
          results.success++;
          results.imported.push(newProduct);

        } catch (error: any) {
          results.errors.push(`行 ${i + 2}: ${error.message || 'データの処理中にエラーが発生しました'}`);
        }
      }

      res.json({
        message: `${results.success}件の商品をインポートしました`,
        success: results.success,
        errors: results.errors,
        imported: results.imported
      });

    } catch (error: any) {
      console.error("Error importing Excel file:", error);
      res.status(500).json({ 
        message: "Excelファイルの処理中にエラーが発生しました",
        error: error.message 
      });
    }
  });

  const httpServer = createServer(app);
  return httpServer;
}
