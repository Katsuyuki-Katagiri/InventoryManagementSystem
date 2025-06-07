import type { Express } from "express";
import { createServer, type Server } from "http";
import { storage } from "./storage";
import { insertProductSchema, updateProductSchema } from "@shared/schema";
import { z } from "zod";

export async function registerRoutes(app: Express): Promise<Server> {
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

  const httpServer = createServer(app);
  return httpServer;
}
