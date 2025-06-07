CREATE TABLE "departments" (
	"id" serial PRIMARY KEY NOT NULL,
	"department_code" varchar(4) NOT NULL,
	"department_name" text NOT NULL,
	"facility_id" integer NOT NULL,
	"is_active" integer DEFAULT 1 NOT NULL,
	CONSTRAINT "departments_department_code_unique" UNIQUE("department_code")
);
--> statement-breakpoint
CREATE TABLE "facilities" (
	"id" serial PRIMARY KEY NOT NULL,
	"facility_code" varchar(4) NOT NULL,
	"facility_name" text NOT NULL,
	"is_active" integer DEFAULT 1 NOT NULL,
	CONSTRAINT "facilities_facility_code_unique" UNIQUE("facility_code")
);
--> statement-breakpoint
CREATE TABLE "inventory" (
	"id" serial PRIMARY KEY NOT NULL,
	"product_id" integer NOT NULL,
	"department_id" integer NOT NULL,
	"lot_number" text NOT NULL,
	"expiry_date" timestamp,
	"quantity" integer DEFAULT 0 NOT NULL,
	"storage_location" text,
	"shipment_date" timestamp,
	"shipment_number" text,
	"facility_name" text,
	"responsible_person" text,
	"remarks" text,
	"inventory_month" text DEFAULT '2025-04',
	"created_at" timestamp DEFAULT now() NOT NULL,
	"updated_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "monthly_inventory" (
	"id" serial PRIMARY KEY NOT NULL,
	"product_id" integer NOT NULL,
	"department_id" integer NOT NULL,
	"inventory_month" text NOT NULL,
	"quantity" integer DEFAULT 0 NOT NULL,
	"lot_number" text,
	"expiry_date" timestamp,
	"storage_location" text,
	"shipment_date" timestamp,
	"shipment_number" text,
	"facility_name" text,
	"responsible_person" text,
	"remarks" text,
	"created_at" timestamp DEFAULT now() NOT NULL
);
--> statement-breakpoint
CREATE TABLE "products" (
	"id" serial PRIMARY KEY NOT NULL,
	"product_code" text NOT NULL,
	"generic_name" text NOT NULL,
	"commercial_name" text NOT NULL,
	"specification" text,
	"category" text NOT NULL,
	"asset_classification" text,
	"price" numeric(10, 2) DEFAULT '0',
	"low_stock_threshold" integer DEFAULT 10 NOT NULL,
	"is_active" integer DEFAULT 1 NOT NULL,
	CONSTRAINT "products_product_code_unique" UNIQUE("product_code")
);
--> statement-breakpoint
CREATE TABLE "stock_movements" (
	"id" serial PRIMARY KEY NOT NULL,
	"inventory_id" integer NOT NULL,
	"movement_type" text NOT NULL,
	"quantity" integer NOT NULL,
	"reference_number" text,
	"notes" text,
	"created_at" timestamp DEFAULT now() NOT NULL,
	"created_by" text NOT NULL
);
--> statement-breakpoint
CREATE TABLE "suppliers" (
	"id" serial PRIMARY KEY NOT NULL,
	"supplier_name" text NOT NULL,
	"contact_person" text,
	"phone" text,
	"email" text,
	"address" text,
	"is_active" integer DEFAULT 1 NOT NULL
);
--> statement-breakpoint
ALTER TABLE "departments" ADD CONSTRAINT "departments_facility_id_facilities_id_fk" FOREIGN KEY ("facility_id") REFERENCES "public"."facilities"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_product_id_products_id_fk" FOREIGN KEY ("product_id") REFERENCES "public"."products"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "inventory" ADD CONSTRAINT "inventory_department_id_departments_id_fk" FOREIGN KEY ("department_id") REFERENCES "public"."departments"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "monthly_inventory" ADD CONSTRAINT "monthly_inventory_product_id_products_id_fk" FOREIGN KEY ("product_id") REFERENCES "public"."products"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "monthly_inventory" ADD CONSTRAINT "monthly_inventory_department_id_departments_id_fk" FOREIGN KEY ("department_id") REFERENCES "public"."departments"("id") ON DELETE no action ON UPDATE no action;--> statement-breakpoint
ALTER TABLE "stock_movements" ADD CONSTRAINT "stock_movements_inventory_id_inventory_id_fk" FOREIGN KEY ("inventory_id") REFERENCES "public"."inventory"("id") ON DELETE no action ON UPDATE no action;