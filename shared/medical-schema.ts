import { pgTable, text, serial, integer, decimal, timestamp, varchar, date } from "drizzle-orm/pg-core";
import { createInsertSchema } from "drizzle-zod";
import { z } from "zod";
import { relations } from "drizzle-orm";

// 医療機器商品マスタ
export const medicalProducts = pgTable("medical_products", {
  id: serial("id").primaryKey(),
  productCode: varchar("product_code", { length: 10 }).notNull().unique(), // 10桁数字の商品コード
  genericName: text("generic_name").notNull(), // メラ商品名
  commercialName: text("commercial_name").notNull(), // 販売名
  specification: text("specification"), // 規格
  category: text("category").notNull(), // 品種区分
  assetClassification: text("asset_classification"), // 資産分類
  price: decimal("price", { precision: 10, scale: 2 }).notNull(),
  lowStockThreshold: integer("low_stock_threshold").notNull().default(10),
  isActive: integer("is_active").notNull().default(1),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

// 事業所マスタ
export const facilities = pgTable("facilities", {
  id: serial("id").primaryKey(),
  facilityCode: varchar("facility_code", { length: 4 }).notNull().unique(),
  facilityName: text("facility_name").notNull(),
  address: text("address"),
  phone: text("phone"),
  isActive: integer("is_active").notNull().default(1),
});

// 部門マスタ
export const departments = pgTable("departments", {
  id: serial("id").primaryKey(),
  departmentCode: varchar("department_code", { length: 4 }).notNull().unique(),
  departmentName: text("department_name").notNull(),
  facilityId: integer("facility_id").notNull().references(() => facilities.id),
  isActive: integer("is_active").notNull().default(1),
});

// ロット・在庫管理テーブル
export const inventory = pgTable("inventory", {
  id: serial("id").primaryKey(),
  productId: integer("product_id").notNull().references(() => medicalProducts.id),
  departmentId: integer("department_id").notNull().references(() => departments.id),
  lotNumber: text("lot_number").notNull(),
  expiryDate: date("expiry_date"),
  quantity: integer("quantity").notNull().default(0),
  storageLocation: text("storage_location"),
  receivedDate: date("received_date"),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

// 入出庫履歴
export const stockMovements = pgTable("stock_movements", {
  id: serial("id").primaryKey(),
  inventoryId: integer("inventory_id").notNull().references(() => inventory.id),
  movementType: text("movement_type").notNull(), // 'IN', 'OUT', 'TRANSFER', 'ADJUSTMENT'
  quantity: integer("quantity").notNull(),
  referenceNumber: text("reference_number"),
  destinationDepartment: text("destination_department"),
  notes: text("notes"),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  createdBy: text("created_by").notNull(),
});

// 取引先マスタ
export const suppliers = pgTable("suppliers", {
  id: serial("id").primaryKey(),
  supplierName: text("supplier_name").notNull(),
  contactPerson: text("contact_person"),
  phone: text("phone"),
  email: text("email"),
  address: text("address"),
  isActive: integer("is_active").notNull().default(1),
});

// リレーション定義
export const facilitiesRelations = relations(facilities, ({ many }) => ({
  departments: many(departments),
}));

export const departmentsRelations = relations(departments, ({ one, many }) => ({
  facility: one(facilities, {
    fields: [departments.facilityId],
    references: [facilities.id],
  }),
  inventory: many(inventory),
}));

export const medicalProductsRelations = relations(medicalProducts, ({ many }) => ({
  inventory: many(inventory),
}));

export const inventoryRelations = relations(inventory, ({ one, many }) => ({
  product: one(medicalProducts, {
    fields: [inventory.productId],
    references: [medicalProducts.id],
  }),
  department: one(departments, {
    fields: [inventory.departmentId],
    references: [departments.id],
  }),
  movements: many(stockMovements),
}));

export const stockMovementsRelations = relations(stockMovements, ({ one }) => ({
  inventory: one(inventory, {
    fields: [stockMovements.inventoryId],
    references: [inventory.id],
  }),
}));

// Zod スキーマ
export const insertMedicalProductSchema = createInsertSchema(medicalProducts).omit({
  id: true,
  createdAt: true,
  updatedAt: true,
});

export const updateMedicalProductSchema = createInsertSchema(medicalProducts).omit({
  id: true,
  createdAt: true,
  updatedAt: true,
}).partial();

export const insertFacilitySchema = createInsertSchema(facilities).omit({
  id: true,
});

export const insertDepartmentSchema = createInsertSchema(departments).omit({
  id: true,
});

export const insertInventorySchema = createInsertSchema(inventory).omit({
  id: true,
  createdAt: true,
  updatedAt: true,
});

export const insertStockMovementSchema = createInsertSchema(stockMovements).omit({
  id: true,
  createdAt: true,
});

// 型定義
export type MedicalProduct = typeof medicalProducts.$inferSelect;
export type InsertMedicalProduct = z.infer<typeof insertMedicalProductSchema>;
export type UpdateMedicalProduct = z.infer<typeof updateMedicalProductSchema>;

export type Facility = typeof facilities.$inferSelect;
export type InsertFacility = z.infer<typeof insertFacilitySchema>;

export type Department = typeof departments.$inferSelect;
export type InsertDepartment = z.infer<typeof insertDepartmentSchema>;

export type Inventory = typeof inventory.$inferSelect;
export type InsertInventory = z.infer<typeof insertInventorySchema>;

export type StockMovement = typeof stockMovements.$inferSelect;
export type InsertStockMovement = z.infer<typeof insertStockMovementSchema>;

export type Supplier = typeof suppliers.$inferSelect;

// 医療機器カテゴリー
export const MEDICAL_DEVICE_CATEGORIES = [
  "人工心肺回路",
  "酸素供給チューブ", 
  "輸液セット",
  "カテーテル",
  "縫合材料",
  "注射器・針",
  "ガーゼ・包帯",
  "手術器具",
  "診断機器",
  "その他"
] as const;

export type MedicalDeviceCategory = typeof MEDICAL_DEVICE_CATEGORIES[number];

// 移動タイプ
export const MOVEMENT_TYPES = [
  { value: "IN", label: "入庫" },
  { value: "OUT", label: "出庫" },
  { value: "TRANSFER", label: "移動" },
  { value: "ADJUSTMENT", label: "調整" },
] as const;

// 在庫統計用の型
export interface InventoryStats {
  totalProducts: number;
  lowStockItems: number;
  expiringSoonItems: number;
  totalValue: number;
  categories: number;
}

// 在庫アラート用の型
export interface ExpiryAlert {
  id: number;
  productName: string;
  lotNumber: string;
  expiryDate: string;
  quantity: number;
  daysUntilExpiry: number;
}