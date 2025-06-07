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

export interface IMedicalStorage {
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

export class MedicalDatabaseStorage implements IMedicalStorage {
  async getProducts(): Promise<MedicalProduct[]> {
    return await db.select().from(medicalProducts).where(eq(medicalProducts.isActive, 1));
  }

  async getProductById(id: number): Promise<MedicalProduct | undefined> {
    const [product] = await db.select().from(medicalProducts).where(eq(medicalProducts.id, id));
    return product || undefined;
  }

  async getProductByCode(code: string): Promise<MedicalProduct | undefined> {
    const [product] = await db.select().from(medicalProducts).where(eq(medicalProducts.productCode, code));
    return product || undefined;
  }

  async createProduct(insertProduct: InsertMedicalProduct): Promise<MedicalProduct> {
    const [product] = await db
      .insert(medicalProducts)
      .values(insertProduct)
      .returning();
    return product;
  }

  async updateProduct(id: number, updates: UpdateMedicalProduct): Promise<MedicalProduct | undefined> {
    const [updatedProduct] = await db
      .update(medicalProducts)
      .set({
        ...updates,
        updatedAt: new Date()
      })
      .where(eq(medicalProducts.id, id))
      .returning();
    return updatedProduct || undefined;
  }

  async deleteProduct(id: number): Promise<boolean> {
    // Soft delete by setting isActive to 0
    const result = await db
      .update(medicalProducts)
      .set({ isActive: 0, updatedAt: new Date() })
      .where(eq(medicalProducts.id, id));
    return result.rowCount ? result.rowCount > 0 : false;
  }

  async searchProducts(query: string): Promise<MedicalProduct[]> {
    return await db
      .select()
      .from(medicalProducts)
      .where(
        or(
          ilike(medicalProducts.genericName, `%${query}%`),
          ilike(medicalProducts.commercialName, `%${query}%`),
          ilike(medicalProducts.productCode, `%${query}%`),
          ilike(medicalProducts.specification, `%${query}%`)
        )
      );
  }

  async getProductsByCategory(category: string): Promise<MedicalProduct[]> {
    return await db
      .select()
      .from(medicalProducts)
      .where(eq(medicalProducts.category, category));
  }

  async getInventoryByProduct(productId: number): Promise<Inventory[]> {
    return await db
      .select()
      .from(inventory)
      .where(eq(inventory.productId, productId));
  }

  async getTotalInventoryStats(): Promise<InventoryStats> {
    const [productStats] = await db
      .select({
        totalProducts: count(),
        categories: count(sql`DISTINCT ${medicalProducts.category}`)
      })
      .from(medicalProducts)
      .where(eq(medicalProducts.isActive, 1));

    const [inventoryStats] = await db
      .select({
        totalValue: sum(sql`${medicalProducts.price}::numeric * ${inventory.quantity}`),
        lowStockItems: count(sql`CASE WHEN ${inventory.quantity} <= ${medicalProducts.lowStockThreshold} THEN 1 END`)
      })
      .from(inventory)
      .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id));

    // Get expiring items (within 30 days)
    const [expiringStats] = await db
      .select({
        expiringSoonItems: count()
      })
      .from(inventory)
      .where(sql`${inventory.expiryDate} <= CURRENT_DATE + INTERVAL '30 days' AND ${inventory.expiryDate} >= CURRENT_DATE`);

    return {
      totalProducts: productStats.totalProducts || 0,
      lowStockItems: inventoryStats.lowStockItems || 0,
      expiringSoonItems: expiringStats.expiringSoonItems || 0,
      totalValue: Number(inventoryStats.totalValue) || 0,
      categories: productStats.categories || 0,
    };
  }

  async getExpiringProducts(days: number): Promise<any[]> {
    return await db
      .select({
        id: inventory.id,
        productName: medicalProducts.genericName,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        quantity: inventory.quantity
      })
      .from(inventory)
      .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id))
      .where(sql`${inventory.expiryDate} <= CURRENT_DATE + INTERVAL '${days} days' AND ${inventory.expiryDate} >= CURRENT_DATE`)
      .orderBy(inventory.expiryDate);
  }

  async getLowStockProducts(): Promise<any[]> {
    return await db
      .select({
        id: medicalProducts.id,
        productName: medicalProducts.genericName,
        productCode: medicalProducts.productCode,
        category: medicalProducts.category,
        totalQuantity: sum(inventory.quantity),
        lowStockThreshold: medicalProducts.lowStockThreshold
      })
      .from(medicalProducts)
      .leftJoin(inventory, eq(inventory.productId, medicalProducts.id))
      .groupBy(medicalProducts.id, medicalProducts.genericName, medicalProducts.productCode, medicalProducts.category, medicalProducts.lowStockThreshold)
      .having(sql`COALESCE(SUM(${inventory.quantity}), 0) <= ${medicalProducts.lowStockThreshold}`);
  }
}

export const medicalStorage = new MedicalDatabaseStorage();