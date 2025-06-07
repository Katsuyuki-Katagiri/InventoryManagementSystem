import { pgTable, text, serial, integer, decimal, timestamp, varchar } from "drizzle-orm/pg-core";
import { createInsertSchema } from "drizzle-zod";
import { z } from "zod";
import { relations } from "drizzle-orm";

export const products = pgTable("products", {
  id: serial("id").primaryKey(),
  productCode: text("product_code").notNull().unique(), // 10桁数字の商品コード
  genericName: text("generic_name").notNull(), // メラ商品名
  commercialName: text("commercial_name").notNull(), // 販売名
  specification: text("specification"), // 規格
  category: text("category").notNull(), // 品種区分
  assetClassification: text("asset_classification"), // 資産分類
  price: decimal("price", { precision: 10, scale: 2 }).default("0"),
  lowStockThreshold: integer("low_stock_threshold").notNull().default(10),
  isActive: integer("is_active").notNull().default(1), // 有効/無効フラグ
});

// 事業所テーブル
export const facilities = pgTable("facilities", {
  id: serial("id").primaryKey(),
  facilityCode: varchar("facility_code", { length: 4 }).notNull().unique(),
  facilityName: text("facility_name").notNull(),
  isActive: integer("is_active").notNull().default(1),
});

// 部門テーブル
export const departments = pgTable("departments", {
  id: serial("id").primaryKey(),
  departmentCode: varchar("department_code", { length: 4 }).notNull().unique(),
  departmentName: text("department_name").notNull(),
  facilityId: integer("facility_id").notNull().references(() => facilities.id),
  isActive: integer("is_active").notNull().default(1),
});

// 在庫テーブル（ロット・有効期限管理）
export const inventory = pgTable("inventory", {
  id: serial("id").primaryKey(),
  productId: integer("product_id").notNull().references(() => products.id),
  departmentId: integer("department_id").notNull().references(() => departments.id),
  lotNumber: text("lot_number").notNull(),
  expiryDate: timestamp("expiry_date"),
  quantity: integer("quantity").notNull().default(0),
  storageLocation: text("storage_location"),
  shipmentDate: timestamp("shipment_date"),
  shipmentNumber: text("shipment_number"),
  facilityName: text("facility_name"),
  responsiblePerson: text("responsible_person"),
  remarks: text("remarks"),
  inventoryMonth: text("inventory_month").default("2025-04"), // YYYY-MM format for monthly tracking
  createdAt: timestamp("created_at").notNull().defaultNow(),
  updatedAt: timestamp("updated_at").notNull().defaultNow(),
});

// 月次在庫履歴テーブル
export const monthlyInventory = pgTable("monthly_inventory", {
  id: serial("id").primaryKey(),
  productId: integer("product_id").notNull().references(() => products.id),
  departmentId: integer("department_id").notNull().references(() => departments.id),
  inventoryMonth: text("inventory_month").notNull(), // YYYY-MM format
  quantity: integer("quantity").notNull().default(0),
  lotNumber: text("lot_number"),
  expiryDate: timestamp("expiry_date"),
  storageLocation: text("storage_location"),
  shipmentDate: timestamp("shipment_date"),
  shipmentNumber: text("shipment_number"),
  facilityName: text("facility_name"),
  responsiblePerson: text("responsible_person"),
  remarks: text("remarks"),
  createdAt: timestamp("created_at").notNull().defaultNow(),
});

// 入出庫履歴テーブル
export const stockMovements = pgTable("stock_movements", {
  id: serial("id").primaryKey(),
  inventoryId: integer("inventory_id").notNull().references(() => inventory.id),
  movementType: text("movement_type").notNull(), // 'IN' | 'OUT' | 'TRANSFER' | 'ADJUSTMENT'
  quantity: integer("quantity").notNull(),
  referenceNumber: text("reference_number"),
  notes: text("notes"),
  createdAt: timestamp("created_at").notNull().defaultNow(),
  createdBy: text("created_by").notNull(),
});

// 取引先テーブル
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

export const productsRelations = relations(products, ({ many }) => ({
  inventory: many(inventory),
}));

export const inventoryRelations = relations(inventory, ({ one, many }) => ({
  product: one(products, {
    fields: [inventory.productId],
    references: [products.id],
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

// スキーマ定義
export const insertProductSchema = createInsertSchema(products).omit({
  id: true,
}).extend({
  price: z.string().default("0"),
});

export const updateProductSchema = createInsertSchema(products).omit({
  id: true,
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

export const insertMonthlyInventorySchema = createInsertSchema(monthlyInventory).omit({
  id: true,
  createdAt: true,
});

export const insertStockMovementSchema = createInsertSchema(stockMovements).omit({
  id: true,
  createdAt: true,
});

// 型定義
export type Product = typeof products.$inferSelect;
export type InsertProduct = z.infer<typeof insertProductSchema>;
export type UpdateProduct = z.infer<typeof updateProductSchema>;

export type Facility = typeof facilities.$inferSelect;
export type InsertFacility = z.infer<typeof insertFacilitySchema>;

export type Department = typeof departments.$inferSelect;
export type InsertDepartment = z.infer<typeof insertDepartmentSchema>;

export type Inventory = typeof inventory.$inferSelect;
export type InsertInventory = z.infer<typeof insertInventorySchema>;

export type MonthlyInventory = typeof monthlyInventory.$inferSelect;
export type InsertMonthlyInventory = z.infer<typeof insertMonthlyInventorySchema>;

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
