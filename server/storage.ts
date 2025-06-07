
import { db } from "./db";
import { 
  medicalProducts, 
  inventory, 
  departments,
  facilities,
  stockMovements,
  type MedicalProduct, 
  type InsertMedicalProduct,
  type Inventory,
  type Department,
  type InsertDepartment,
  type Facility,
  type InsertFacility
} from "../shared/medical-schema";
import { eq, like, ilike, or, sum, count, sql, desc, and } from "drizzle-orm";

export interface IStorage {
  // Product CRUD operations
  getProducts(): Promise<MedicalProduct[]>;
  getProductById(id: number): Promise<MedicalProduct | undefined>;
  getProductByCode(code: string): Promise<MedicalProduct | undefined>;
  createProduct(product: InsertMedicalProduct): Promise<MedicalProduct>;
  updateProduct(id: number, updates: Partial<MedicalProduct>): Promise<MedicalProduct | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<MedicalProduct[]>;
  getProductsByCategory(category: string): Promise<MedicalProduct[]>;

  // Inventory operations  
  getInventoryByProduct(productId: number): Promise<Inventory[]>;
  createInventory(inventory: any): Promise<Inventory>;
  getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    expiringSoonItems: number;
    totalValue: number;
    categories: number;
  }>;
  getExpiringProducts(days: number): Promise<any[]>;
  getLowStockProducts(): Promise<any[]>;
  getDetailedInventoryData(month?: string): Promise<any[]>;
  updateInventoryItem(id: number, updates: any): Promise<any>;

  // Department operations
  getDepartments(): Promise<Department[]>;
  getDepartmentById(id: number): Promise<Department | undefined>;
  createDepartment(department: InsertDepartment): Promise<Department>;
  updateDepartment(id: number, updates: Partial<Department>): Promise<Department | undefined>;
  getDepartmentsByFacility(facilityId: number): Promise<Department[]>;

  // Facility operations
  getFacilities(): Promise<Facility[]>;
  getFacilityById(id: number): Promise<Facility | undefined>;
  createFacility(facility: InsertFacility): Promise<Facility>;
}

class DatabaseStorage implements IStorage {
  // Product operations
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

  async createProduct(product: InsertMedicalProduct): Promise<MedicalProduct> {
    const [newProduct] = await db.insert(medicalProducts).values(product).returning();
    return newProduct;
  }

  async updateProduct(id: number, updates: Partial<MedicalProduct>): Promise<MedicalProduct | undefined> {
    const [updatedProduct] = await db.update(medicalProducts)
      .set(updates)
      .where(eq(medicalProducts.id, id))
      .returning();
    return updatedProduct || undefined;
  }

  async deleteProduct(id: number): Promise<boolean> {
    const result = await db.update(medicalProducts)
      .set({ isActive: 0 })
      .where(eq(medicalProducts.id, id));
    return result.rowCount !== undefined && result.rowCount > 0;
  }

  async searchProducts(query: string): Promise<MedicalProduct[]> {
    return await db
      .select()
      .from(medicalProducts)
      .where(
        and(
          eq(medicalProducts.isActive, 1),
          or(
            ilike(medicalProducts.genericName, `%${query}%`),
            ilike(medicalProducts.commercialName, `%${query}%`),
            ilike(medicalProducts.productCode, `%${query}%`),
            ilike(medicalProducts.specification, `%${query}%`)
          )
        )
      );
  }

  async getProductsByCategory(category: string): Promise<MedicalProduct[]> {
    return await db
      .select()
      .from(medicalProducts)
      .where(and(
        eq(medicalProducts.category, category),
        eq(medicalProducts.isActive, 1)
      ));
  }

  // Inventory operations
  async getInventoryByProduct(productId: number): Promise<Inventory[]> {
    return await db
      .select()
      .from(inventory)
      .where(eq(inventory.productId, productId));
  }

  async createInventory(inventoryData: any): Promise<Inventory> {
    const [newInventory] = await db.insert(inventory).values(inventoryData).returning();
    return newInventory;
  }

  async getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    expiringSoonItems: number;
    totalValue: number;
    categories: number;
  }> {
    try {
      const [productStats] = await db
        .select({
          totalProducts: count(),
          categories: count(sql`DISTINCT ${medicalProducts.category}`)
        })
        .from(medicalProducts)
        .where(eq(medicalProducts.isActive, 1));

      const [inventoryStats] = await db
        .select({
          totalValue: sql`COALESCE(SUM(${medicalProducts.price}::numeric * ${inventory.quantity}), 0)`,
          lowStockItems: count(sql`CASE WHEN ${inventory.quantity} <= ${medicalProducts.lowStockThreshold} THEN 1 END`)
        })
        .from(inventory)
        .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id))
        .where(eq(medicalProducts.isActive, 1));

      // Count expiring products (within 30 days)
      const thirtyDaysFromNow = new Date();
      thirtyDaysFromNow.setDate(thirtyDaysFromNow.getDate() + 30);

      const [expiringStats] = await db
        .select({
          expiringSoonItems: count()
        })
        .from(inventory)
        .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id))
        .where(and(
          eq(medicalProducts.isActive, 1),
          sql`${inventory.expiryDate} <= ${thirtyDaysFromNow}`,
          sql`${inventory.expiryDate} IS NOT NULL`
        ));

      return {
        totalProducts: Number(productStats?.totalProducts || 0),
        lowStockItems: Number(inventoryStats?.lowStockItems || 0),
        expiringSoonItems: Number(expiringStats?.expiringSoonItems || 0),
        totalValue: Number(inventoryStats?.totalValue || 0),
        categories: Number(productStats?.categories || 0)
      };
    } catch (error) {
      console.error('Error getting inventory stats:', error);
      return {
        totalProducts: 0,
        lowStockItems: 0,
        expiringSoonItems: 0,
        totalValue: 0,
        categories: 0
      };
    }
  }

  async getExpiringProducts(days: number): Promise<any[]> {
    const futureDate = new Date();
    futureDate.setDate(futureDate.getDate() + days);

    return await db
      .select({
        id: inventory.id,
        productName: medicalProducts.genericName,
        productCode: medicalProducts.productCode,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        quantity: inventory.quantity,
        departmentName: departments.departmentName
      })
      .from(inventory)
      .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id))
      .innerJoin(departments, eq(inventory.departmentId, departments.id))
      .where(and(
        sql`${inventory.expiryDate} <= ${futureDate}`,
        sql`${inventory.expiryDate} IS NOT NULL`,
        eq(medicalProducts.isActive, 1)
      ))
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
      .where(eq(medicalProducts.isActive, 1))
      .groupBy(medicalProducts.id, medicalProducts.genericName, medicalProducts.productCode, medicalProducts.category, medicalProducts.lowStockThreshold)
      .having(sql`COALESCE(SUM(${inventory.quantity}), 0) <= ${medicalProducts.lowStockThreshold}`);
  }

  async getDetailedInventoryData(month?: string): Promise<any[]> {
    try {
      let query = db
        .select({
          id: inventory.id,
          productCode: medicalProducts.productCode,
          productName: medicalProducts.genericName,
          commercialName: medicalProducts.commercialName,
          specification: medicalProducts.specification,
          category: medicalProducts.category,
          lotNumber: inventory.lotNumber,
          expiryDate: inventory.expiryDate,
          quantity: inventory.quantity,
          departmentName: departments.departmentName,
          facilityName: facilities.facilityName,
          storageLocation: inventory.storageLocation
        })
        .from(inventory)
        .innerJoin(medicalProducts, eq(inventory.productId, medicalProducts.id))
        .innerJoin(departments, eq(inventory.departmentId, departments.id))
        .innerJoin(facilities, eq(departments.facilityId, facilities.id))
        .where(eq(medicalProducts.isActive, 1));

      return await query.orderBy(medicalProducts.productCode);
    } catch (error) {
      console.error('Error getting detailed inventory data:', error);
      return [];
    }
  }

  async updateInventoryItem(id: number, updates: any): Promise<any> {
    const [updatedItem] = await db
      .update(inventory)
      .set({ ...updates, updatedAt: new Date() })
      .where(eq(inventory.id, id))
      .returning();
    return updatedItem;
  }

  // Department operations
  async getDepartments(): Promise<Department[]> {
    return await db.select().from(departments).where(eq(departments.isActive, 1));
  }

  async getDepartmentById(id: number): Promise<Department | undefined> {
    const [department] = await db.select().from(departments).where(eq(departments.id, id));
    return department || undefined;
  }

  async createDepartment(department: InsertDepartment): Promise<Department> {
    const [newDepartment] = await db.insert(departments).values(department).returning();
    return newDepartment;
  }

  async updateDepartment(id: number, updates: Partial<Department>): Promise<Department | undefined> {
    const [updatedDepartment] = await db.update(departments)
      .set(updates)
      .where(eq(departments.id, id))
      .returning();
    return updatedDepartment || undefined;
  }

  async getDepartmentsByFacility(facilityId: number): Promise<Department[]> {
    return await db.select().from(departments)
      .where(and(
        eq(departments.facilityId, facilityId),
        eq(departments.isActive, 1)
      ));
  }

  // Facility operations
  async getFacilities(): Promise<Facility[]> {
    return await db.select().from(facilities).where(eq(facilities.isActive, 1));
  }

  async getFacilityById(id: number): Promise<Facility | undefined> {
    const [facility] = await db.select().from(facilities).where(eq(facilities.id, id));
    return facility || undefined;
  }

  async createFacility(facility: InsertFacility): Promise<Facility> {
    const [newFacility] = await db.insert(facilities).values(facility).returning();
    return newFacility;
  }
}

export const storage = new DatabaseStorage();
