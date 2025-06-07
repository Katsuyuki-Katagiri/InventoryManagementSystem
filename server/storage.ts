import { 
  products, 
  inventory,
  departments,
  facilities,
  type Product, 
  type InsertProduct, 
  type UpdateProduct,
  type Inventory,
  type Department,
  type InsertDepartment,
  type Facility,
  type InsertFacility
} from "@shared/schema";
import { db } from "./db";
import { eq, like, ilike, or, sum, count, sql, desc } from "drizzle-orm";

export interface IStorage {
  // Medical Product CRUD operations
  getProducts(): Promise<Product[]>;
  getProductById(id: number): Promise<Product | undefined>;
  getProductByCode(code: string): Promise<Product | undefined>;
  createProduct(product: InsertProduct): Promise<Product>;
  updateProduct(id: number, updates: UpdateProduct): Promise<Product | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<Product[]>;
  getProductsByCategory(category: string): Promise<Product[]>;
  
  // Inventory operations  
  getInventoryByProduct(productId: number): Promise<Inventory[]>;
  getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    expiringSoonItems: number;
    totalValue: number;
    categories: number;
  }>;
  getExpiringProducts(days: number): Promise<any[]>;
  getLowStockProducts(): Promise<any[]>;

  // Department operations
  getDepartments(): Promise<Department[]>;
  getDepartmentById(id: number): Promise<Department | undefined>;
  getDepartmentsByFacility(facilityId: number): Promise<Department[]>;
  createDepartment(department: InsertDepartment): Promise<Department>;
  updateDepartment(id: number, updates: Partial<Department>): Promise<Department | undefined>;
  
  // Facility operations
  getFacilities(): Promise<Facility[]>;
  getFacilityById(id: number): Promise<Facility | undefined>;
  createFacility(facility: InsertFacility): Promise<Facility>;

  // Detailed inventory operations
  getDetailedInventoryData(month?: string): Promise<any[]>;
  updateInventoryItem(id: number, updates: any): Promise<any>;
}

export class DatabaseStorage implements IStorage {
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
    // Soft delete by setting isActive to 0
    const result = await db
      .update(products)
      .set({ isActive: 0 })
      .where(eq(products.id, id));
    return result.rowCount ? result.rowCount > 0 : false;
  }

  async searchProducts(query: string): Promise<Product[]> {
    return await db
      .select()
      .from(products)
      .where(
        or(
          ilike(products.genericName, `%${query}%`),
          ilike(products.commercialName, `%${query}%`),
          ilike(products.productCode, `%${query}%`),
          ilike(products.specification, `%${query}%`)
        )
      );
  }

  async getProductsByCategory(category: string): Promise<Product[]> {
    return await db
      .select()
      .from(products)
      .where(eq(products.category, category));
  }

  async getInventoryByProduct(productId: number): Promise<Inventory[]> {
    return await db
      .select()
      .from(inventory)
      .where(eq(inventory.productId, productId));
  }

  async getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    expiringSoonItems: number;
    totalValue: number;
    categories: number;
  }> {
    const [productStats] = await db
      .select({
        totalProducts: count(),
        categories: count(sql`DISTINCT ${products.category}`)
      })
      .from(products)
      .where(eq(products.isActive, 1));

    const inventoryWithProducts = await db
      .select({
        productId: inventory.productId,
        quantity: inventory.quantity,
        price: products.price,
        lowStockThreshold: products.lowStockThreshold,
        expiryDate: inventory.expiryDate
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id));

    // Calculate total value and low stock items
    let totalValue = 0;
    let lowStockItems = 0;
    let expiringSoonItems = 0;
    const productTotals = new Map<number, number>();

    inventoryWithProducts.forEach(item => {
      totalValue += Number(item.price) * item.quantity;
      
      // Sum quantities by product
      const currentTotal = productTotals.get(item.productId) || 0;
      productTotals.set(item.productId, currentTotal + item.quantity);
      
      // Check for expiring items (within 30 days)
      if (item.expiryDate) {
        const thirtyDaysFromNow = new Date();
        thirtyDaysFromNow.setDate(thirtyDaysFromNow.getDate() + 30);
        if (new Date(item.expiryDate) <= thirtyDaysFromNow) {
          expiringSoonItems++;
        }
      }
    });

    // Count low stock products
    inventoryWithProducts.forEach(item => {
      const totalQuantity = productTotals.get(item.productId) || 0;
      if (totalQuantity <= item.lowStockThreshold) {
        lowStockItems++;
      }
    });

    return {
      totalProducts: productStats.totalProducts || 0,
      lowStockItems,
      expiringSoonItems,
      totalValue,
      categories: productStats.categories || 0,
    };
  }

  async getExpiringProducts(days: number): Promise<any[]> {
    return await db
      .select({
        id: inventory.id,
        productName: products.genericName,
        lotNumber: inventory.lotNumber,
        expiryDate: inventory.expiryDate,
        quantity: inventory.quantity
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .where(sql`${inventory.expiryDate} <= CURRENT_DATE + INTERVAL '${days} days' AND ${inventory.expiryDate} >= CURRENT_DATE`)
      .orderBy(inventory.expiryDate);
  }

  async getLowStockProducts(): Promise<any[]> {
    const inventoryTotals = await db
      .select({
        productId: inventory.productId,
        totalQuantity: sum(inventory.quantity),
        productName: products.genericName,
        productCode: products.productCode,
        category: products.category,
        lowStockThreshold: products.lowStockThreshold
      })
      .from(inventory)
      .innerJoin(products, eq(inventory.productId, products.id))
      .groupBy(inventory.productId, products.genericName, products.productCode, products.category, products.lowStockThreshold)
      .having(sql`SUM(${inventory.quantity}) <= ${products.lowStockThreshold}`);

    return inventoryTotals;
  }

  // Department operations
  async getDepartments(): Promise<Department[]> {
    return await db.select().from(departments).where(eq(departments.isActive, 1));
  }

  async getDepartmentById(id: number): Promise<Department | undefined> {
    const [department] = await db.select().from(departments).where(eq(departments.id, id));
    return department || undefined;
  }

  async getDepartmentsByFacility(facilityId: number): Promise<Department[]> {
    return await db.select().from(departments)
      .where(eq(departments.facilityId, facilityId));
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

  // Detailed inventory operations
  async getDetailedInventoryData(month?: string): Promise<any[]> {
    try {
      let query = db
        .select({
          id: products.id,
          productCode: products.productCode,
          genericName: products.genericName,
          commercialName: products.commercialName,
          category: products.category,
          inventoryId: inventory.id,
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
        })
        .from(products)
        .leftJoin(inventory, eq(inventory.productId, products.id))
        .where(eq(products.isActive, 1));

      // Add month filter if provided
      if (month) {
        query = query.where(and(
          eq(products.isActive, 1),
          eq(inventory.inventoryMonth, month)
        ));
      }

      const result = await query;

      return result.map(item => ({
        ...item,
        quantity: item.quantity || 0,
        lotNumber: item.lotNumber || "-",
        expiryDate: item.expiryDate,
        storageLocation: item.storageLocation,
        shipmentDate: item.shipmentDate,
        shipmentNumber: item.shipmentNumber,
        facilityName: item.facilityName,
        responsiblePerson: item.responsiblePerson,
        remarks: item.remarks,
        inventoryMonth: item.inventoryMonth,
      }));
    } catch (error) {
      console.error("Error getting detailed inventory data:", error);
      return [];
    }
  }

  async updateInventoryItem(id: number, updates: any): Promise<any> {
    try {
      const [updatedItem] = await db
        .update(inventory)
        .set({
          ...updates,
          updatedAt: new Date(),
        })
        .where(eq(inventory.id, id))
        .returning();
      return updatedItem;
    } catch (error) {
      console.error("Error updating inventory item:", error);
      throw error;
    }
  }
}

export const storage = new DatabaseStorage();