import { 
  medicalProducts, 
  inventory,
  departments,
  facilities,
  type MedicalProduct, 
  type InsertMedicalProduct, 
  type UpdateMedicalProduct,
  type Inventory,
  type InventoryStats
} from "@shared/medical-schema";
import { db } from "./db";
import { eq, like, ilike, or, sum, count, sql, desc } from "drizzle-orm";

export interface IStorage {
  // Medical Product CRUD operations
  getProducts(): Promise<MedicalProduct[]>;
  getProductById(id: number): Promise<MedicalProduct | undefined>;
  getProductByCode(code: string): Promise<MedicalProduct | undefined>;
  createProduct(product: InsertMedicalProduct): Promise<MedicalProduct>;
  updateProduct(id: number, updates: UpdateMedicalProduct): Promise<MedicalProduct | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<MedicalProduct[]>;
  getProductsByCategory(category: string): Promise<MedicalProduct[]>;
  
  // Inventory operations  
  getInventoryByProduct(productId: number): Promise<Inventory[]>;
  getTotalInventoryStats(): Promise<InventoryStats>;
  getExpiringProducts(days: number): Promise<any[]>;
  getLowStockProducts(): Promise<any[]>;
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
