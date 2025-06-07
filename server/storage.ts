import { products, type Product, type InsertProduct, type UpdateProduct } from "@shared/schema";
import { db } from "./db";
import { eq } from "drizzle-orm";

export interface IStorage {
  // Product CRUD operations
  getProducts(): Promise<Product[]>;
  getProductById(id: number): Promise<Product | undefined>;
  getProductBySku(sku: string): Promise<Product | undefined>;
  createProduct(product: InsertProduct): Promise<Product>;
  updateProduct(id: number, updates: UpdateProduct): Promise<Product | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<Product[]>;
  getProductsByCategory(category: string): Promise<Product[]>;
  getLowStockProducts(): Promise<Product[]>;
  getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  }>;
}

export class DatabaseStorage implements IStorage {
  async getProducts(): Promise<Product[]> {
    return await db.select().from(products);
  }

  async getProductById(id: number): Promise<Product | undefined> {
    const [product] = await db.select().from(products).where(eq(products.id, id));
    return product || undefined;
  }

  async getProductBySku(sku: string): Promise<Product | undefined> {
    const [product] = await db.select().from(products).where(eq(products.sku, sku));
    return product || undefined;
  }

  async createProduct(insertProduct: InsertProduct): Promise<Product> {
    const [product] = await db
      .insert(products)
      .values(insertProduct)
      .returning();
    return product;
  }

  async updateProduct(id: number, updates: UpdateProduct): Promise<Product | undefined> {
    const [updatedProduct] = await db
      .update(products)
      .set(updates)
      .where(eq(products.id, id))
      .returning();
    return updatedProduct || undefined;
  }

  async deleteProduct(id: number): Promise<boolean> {
    const result = await db.delete(products).where(eq(products.id, id));
    return result.rowCount ? result.rowCount > 0 : false;
  }

  async searchProducts(query: string): Promise<Product[]> {
    const allProducts = await db.select().from(products);
    const lowercaseQuery = query.toLowerCase();
    return allProducts.filter(product =>
      product.name.toLowerCase().includes(lowercaseQuery) ||
      product.sku.toLowerCase().includes(lowercaseQuery) ||
      product.description?.toLowerCase().includes(lowercaseQuery)
    );
  }

  async getProductsByCategory(category: string): Promise<Product[]> {
    return await db.select().from(products).where(eq(products.category, category));
  }

  async getLowStockProducts(): Promise<Product[]> {
    const allProducts = await db.select().from(products);
    return allProducts.filter(product =>
      product.quantity <= product.lowStockThreshold
    );
  }

  async getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  }> {
    const allProducts = await db.select().from(products);
    const lowStockProducts = await this.getLowStockProducts();
    const totalValue = allProducts.reduce((sum, product) => 
      sum + (parseFloat(product.price) * product.quantity), 0
    );
    const categories = new Set(allProducts.map(product => product.category)).size;

    return {
      totalProducts: allProducts.length,
      lowStockItems: lowStockProducts.length,
      totalValue,
      categories
    };
  }
}

export const storage = new DatabaseStorage();
