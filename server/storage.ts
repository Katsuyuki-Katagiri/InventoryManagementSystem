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
    return (result.rowCount || 0) > 0;
  }

  async searchProducts(query: string): Promise<Product[]> {
    return await db.select()
      .from(products)
      .where(
        and(
          eq(products.isActive, 1),
          or(
            ilike(products.genericName, `%${query}%`),
            ilike(products.commercialName, `%${query}%`),
            ilike(products.productCode, `%${query}%`),
            ilike(products.category, `%${query}%`)
          )
        )
      );
  }

  async getProductsByCategory(category: string): Promise<Product[]> {
    return await db.select()
      .from(products)
      .where(
        and(
          eq(products.isActive, 1),
          eq(products.category, category)
        )
      );
  }

  // Inventory operations
  async getInventoryByProduct(productId: number): Promise<Inventory[]> {
    return await db.select().from(inventory).where(eq(inventory.productId, productId));
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
    const totalProducts = await db.select({ count: count() }).from(products).where(eq(products.isActive, 1));
    
    const lowStockQuery = await db
      .select({ 
        productId: inventory.productId,
        totalQuantity: sum(inventory.quantity),
        lowStockThreshold: products.lowStockThreshold
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .where(eq(products.isActive, 1))
      .groupBy(inventory.productId, products.lowStockThreshold);
    
    const lowStockItems = lowStockQuery.filter(item => 
      Number(item.totalQuantity) < item.lowStockThreshold
    ).length;

    const expiringSoon = await db
      .select({ count: count() })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .where(
        and(
          eq(products.isActive, 1),
          sql`${inventory.expiryDate} <= CURRENT_DATE + INTERVAL '30 days'`
        )
      );

    const valueQuery = await db
      .select({ 
        totalValue: sql<number>`SUM(${inventory.quantity} * ${products.price})`
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .where(eq(products.isActive, 1));

    const categoriesQuery = await db
      .select({ count: sql<number>`COUNT(DISTINCT ${products.category})` })
      .from(products)
      .where(eq(products.isActive, 1));

    return {
      totalProducts: totalProducts[0]?.count || 0,
      lowStockItems,
      expiringSoonItems: expiringSoon[0]?.count || 0,
      totalValue: valueQuery[0]?.totalValue || 0,
      categories: categoriesQuery[0]?.count || 0
    };
  }

  async getExpiringProducts(days: number): Promise<any[]> {
    return await db
      .select({
        id: inventory.id,
        productName: products.genericName,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        quantity: inventory.quantity,
        daysUntilExpiry: sql<number>`DATE_PART('day', ${inventory.expiryDate} - CURRENT_DATE)`
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .where(
        and(
          eq(products.isActive, 1),
          sql`${inventory.expiryDate} <= CURRENT_DATE + INTERVAL '${days} days'`
        )
      )
      .orderBy(inventory.expiryDate);
  }

  async getLowStockProducts(): Promise<any[]> {
    const lowStockQuery = await db
      .select({
        id: products.id,
        productCode: products.productCode,
        productName: products.genericName,
        category: products.category,
        currentStock: sql<number>`COALESCE(SUM(${inventory.quantity}), 0)`,
        lowStockThreshold: products.lowStockThreshold
      })
      .from(products)
      .leftJoin(inventory, eq(products.id, inventory.productId))
      .where(eq(products.isActive, 1))
      .groupBy(products.id, products.productCode, products.genericName, products.category, products.lowStockThreshold)
      .having(sql`COALESCE(SUM(${inventory.quantity}), 0) < ${products.lowStockThreshold}`);

    return lowStockQuery;
  }

  async getDetailedInventoryData(month?: string): Promise<any[]> {
    let query = db
      .select({
        id: inventory.id,
        productId: inventory.productId,
        productCode: products.productCode,
        genericName: products.genericName,
        commercialName: products.commercialName,
        specification: products.specification,
        category: products.category,
        assetClassification: products.assetClassification,
        price: products.price,
        quantity: inventory.quantity,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        storageLocation: inventory.storageLocation,
        shipmentDate: inventory.shipmentDate,
        shipmentNumber: inventory.shipmentNumber,
        facilityName: inventory.facilityName,
        responsiblePerson: inventory.responsiblePerson,
        remarks: inventory.remarks,
        inventoryMonth: inventory.inventoryMonth,
        receivedDate: inventory.receivedDate,
        departmentId: inventory.departmentId,
        departmentName: departments.departmentName,
        facilityId: departments.facilityId
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .leftJoin(departments, eq(inventory.departmentId, departments.id));

    if (month) {
      query = query.where(eq(inventory.inventoryMonth, month));
    }

    return await query.orderBy(desc(inventory.receivedDate));
  }

  async updateInventoryItem(id: number, updates: any): Promise<any> {
    const [updatedItem] = await db.update(inventory)
      .set(updates)
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