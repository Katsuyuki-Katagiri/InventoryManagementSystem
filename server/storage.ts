
import { db } from "./db";
import { 
  products, 
  inventory, 
  departments,
  facilities,
  stockMovements,
  type Product, 
  type InsertProduct,
  type Inventory,
  type Department,
  type InsertDepartment,
  type Facility,
  type InsertFacility
} from "../shared/schema";
import { eq, like, ilike, or, sum, count, sql, desc, and } from "drizzle-orm";

export interface IStorage {
  // Product CRUD operations
  getProducts(): Promise<Product[]>;
  getProductById(id: number): Promise<Product | undefined>;
  getProductByCode(code: string): Promise<Product | undefined>;
  createProduct(product: InsertProduct): Promise<Product>;
  updateProduct(id: number, updates: Partial<Product>): Promise<Product | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<Product[]>;
  getProductsByCategory(category: string): Promise<Product[]>;

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
  async getProducts(): Promise<Product[]> {
    return await db.select().from(products).where(eq(products.isActive, 1));
  }

  async getProductById(id: number): Promise<Product | undefined> {
    const [product] = await db.select().from(products).where(eq(products.id, id));
    return product || undefined;
  }

  async getProductByCode(code: string): Promise<Product | undefined> {
    const [product] = await db.select().from(products).where(eq(products.productCode, code));
    return product || undefined;
  }

  async createProduct(product: InsertProduct): Promise<Product> {
    const [newProduct] = await db.insert(products).values(product).returning();
    return newProduct;
  }

  async updateProduct(id: number, updates: Partial<Product>): Promise<Product | undefined> {
    const [updatedProduct] = await db.update(products)
      .set(updates)
      .where(eq(products.id, id))
      .returning();
    return updatedProduct || undefined;
  }

  async deleteProduct(id: number): Promise<boolean> {
    const result = await db.update(products)
      .set({ isActive: 0 })
      .where(eq(products.id, id));
    return result.rowCount !== undefined && result.rowCount > 0;
  }

  async searchProducts(query: string): Promise<Product[]> {
    return await db
      .select()
      .from(products)
      .where(
        and(
          eq(products.isActive, 1),
          or(
            ilike(products.genericName, `%${query}%`),
            ilike(products.commercialName, `%${query}%`),
            ilike(products.productCode, `%${query}%`),
            ilike(products.specification, `%${query}%`)
          )
        )
      );
  }

  async getProductsByCategory(category: string): Promise<Product[]> {
    return await db
      .select()
      .from(products)
      .where(and(
        eq(products.category, category),
        eq(products.isActive, 1)
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
          categories: count(sql`DISTINCT ${products.category}`)
        })
        .from(products)
        .where(eq(products.isActive, 1));

      const [inventoryStats] = await db
        .select({
          totalValue: sql`COALESCE(SUM(${products.price}::numeric * ${inventory.quantity}), 0)`,
          lowStockItems: count(sql`CASE WHEN ${inventory.quantity} <= ${products.lowStockThreshold} THEN 1 END`)
        })
        .from(inventory)
        .innerJoin(products, eq(inventory.productId, products.id))
        .where(eq(products.isActive, 1));

      // Count expiring products (within 30 days)
      const thirtyDaysFromNow = new Date();
      thirtyDaysFromNow.setDate(thirtyDaysFromNow.getDate() + 30);

      const [expiringStats] = await db
        .select({
          expiringSoonItems: count()
        })
        .from(inventory)
        .innerJoin(products, eq(inventory.productId, products.id))
        .where(and(
          eq(products.isActive, 1),
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
        productName: products.genericName,
        productCode: products.productCode,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        quantity: inventory.quantity,
        departmentName: departments.departmentName
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .innerJoin(departments, eq(inventory.departmentId, departments.id))
      .where(and(
        sql`${inventory.expiryDate} <= ${futureDate}`,
        sql`${inventory.expiryDate} IS NOT NULL`,
        eq(products.isActive, 1)
      ))
      .orderBy(inventory.expiryDate);
  }

  async getLowStockProducts(): Promise<any[]> {
    return await db
      .select({
        id: products.id,
        productName: products.genericName,
        productCode: products.productCode,
        category: products.category,
        totalQuantity: sum(inventory.quantity),
        lowStockThreshold: products.lowStockThreshold
      })
      .from(products)
      .leftJoin(inventory, eq(inventory.productId, products.id))
      .where(eq(products.isActive, 1))
      .groupBy(products.id, products.genericName, products.productCode, products.category, products.lowStockThreshold)
      .having(sql`COALESCE(SUM(${inventory.quantity}), 0) <= ${products.lowStockThreshold}`);
  }

  async getDetailedInventoryData(month?: string): Promise<any[]> {
    try {
      let query = db
        .select({
          id: inventory.id,
          productCode: products.productCode,
          productName: products.genericName,
          commercialName: products.commercialName,
          specification: products.specification,
          category: products.category,
          lotNumber: inventory.lotNumber,
          expiryDate: inventory.expiryDate,
          quantity: inventory.quantity,
          departmentName: departments.departmentName,
          facilityName: facilities.facilityName,
          storageLocation: inventory.storageLocation,
          inventoryMonth: inventory.inventoryMonth
        })
        .from(inventory)
        .innerJoin(products, eq(inventory.productId, products.id))
        .innerJoin(departments, eq(inventory.departmentId, departments.id))
        .innerJoin(facilities, eq(departments.facilityId, facilities.id))
        .where(eq(products.isActive, 1));

      if (month) {
        query = query.where(eq(inventory.inventoryMonth, month));
      }

      return await query.orderBy(products.productCode);
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
