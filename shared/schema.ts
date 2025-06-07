import { pgTable, text, serial, integer, decimal } from "drizzle-orm/pg-core";
import { createInsertSchema } from "drizzle-zod";
import { z } from "zod";

export const products = pgTable("products", {
  id: serial("id").primaryKey(),
  name: text("name").notNull(),
  sku: text("sku").notNull().unique(),
  category: text("category").notNull(),
  quantity: integer("quantity").notNull().default(0),
  price: decimal("price", { precision: 10, scale: 2 }).notNull(),
  description: text("description"),
  lowStockThreshold: integer("low_stock_threshold").notNull().default(10),
});

export const insertProductSchema = createInsertSchema(products).omit({
  id: true,
}).required({
  quantity: true,
  lowStockThreshold: true,
});

export const updateProductSchema = createInsertSchema(products).omit({
  id: true,
}).partial();

export type InsertProduct = z.infer<typeof insertProductSchema>;
export type UpdateProduct = z.infer<typeof updateProductSchema>;
export type Product = typeof products.$inferSelect;

// Categories for dropdown
export const PRODUCT_CATEGORIES = [
  "電子機器",
  "衣類", 
  "書籍",
  "家庭用品",
  "スポーツ",
  "玩具",
  "美容",
  "自動車"
] as const;

export type ProductCategory = typeof PRODUCT_CATEGORIES[number];
