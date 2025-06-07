import { products, type Product, type InsertProduct, type UpdateProduct } from "@shared/schema";

export interface IStorage {
  // Product CRUD operations
  getProducts(): Promise<Product[]>;
  getProductById(id: number): Promise<Product | undefined>;
  getProductBySku(sku: string): Promise<Product | undefined>;
  createProduct(product: InsertProduct): Promise<Product>;
  updateProduct(id: number, updates: UpdateProduct): Promise<Product | undefined>;
  deleteProduct(id: number): Promise<boolean>;
  searchProducts(query: string): Promise<Product[]>;
  getProductsByCategory(category: string): Promise<Product[]>;
  getLowStockProducts(): Promise<Product[]>;
  getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  }>;
}

export class MemStorage implements IStorage {
  private products: Map<number, Product>;
  private currentId: number;

  constructor() {
    this.products = new Map();
    this.currentId = 1;
    this.initializeSampleData();
  }

  private initializeSampleData() {
    // Initialize with a few sample products for demo
    const sampleProducts: InsertProduct[] = [
      {
        name: "iPhone 14 Pro",
        sku: "IPH14P-128-BK",
        category: "electronics",
        quantity: 45,
        price: "999.00",
        description: "128GB Space Black",
        lowStockThreshold: 10
      },
      {
        name: "MacBook Air M2",
        sku: "MBA-M2-256",
        category: "electronics", 
        quantity: 8,
        price: "1199.00",
        description: "13-inch, 256GB SSD",
        lowStockThreshold: 10
      },
      {
        name: "Cotton T-Shirt",
        sku: "TSH-CTN-NVY-M",
        category: "clothing",
        quantity: 0,
        price: "24.99",
        description: "Navy Blue, Size M",
        lowStockThreshold: 5
      },
      {
        name: "JavaScript Guide",
        sku: "BK-JS-001",
        category: "books",
        quantity: 32,
        price: "39.99",
        description: "Programming Book",
        lowStockThreshold: 5
      }
    ];

    sampleProducts.forEach(product => {
      const id = this.currentId++;
      const newProduct: Product = { ...product, id };
      this.products.set(id, newProduct);
    });
  }

  async getProducts(): Promise<Product[]> {
    return Array.from(this.products.values());
  }

  async getProductById(id: number): Promise<Product | undefined> {
    return this.products.get(id);
  }

  async getProductBySku(sku: string): Promise<Product | undefined> {
    return Array.from(this.products.values()).find(product => product.sku === sku);
  }

  async createProduct(insertProduct: InsertProduct): Promise<Product> {
    const id = this.currentId++;
    const product: Product = { ...insertProduct, id };
    this.products.set(id, product);
    return product;
  }

  async updateProduct(id: number, updates: UpdateProduct): Promise<Product | undefined> {
    const existingProduct = this.products.get(id);
    if (!existingProduct) {
      return undefined;
    }

    const updatedProduct: Product = { ...existingProduct, ...updates };
    this.products.set(id, updatedProduct);
    return updatedProduct;
  }

  async deleteProduct(id: number): Promise<boolean> {
    return this.products.delete(id);
  }

  async searchProducts(query: string): Promise<Product[]> {
    const lowercaseQuery = query.toLowerCase();
    return Array.from(this.products.values()).filter(product =>
      product.name.toLowerCase().includes(lowercaseQuery) ||
      product.sku.toLowerCase().includes(lowercaseQuery) ||
      product.description?.toLowerCase().includes(lowercaseQuery)
    );
  }

  async getProductsByCategory(category: string): Promise<Product[]> {
    return Array.from(this.products.values()).filter(product => 
      product.category === category
    );
  }

  async getLowStockProducts(): Promise<Product[]> {
    return Array.from(this.products.values()).filter(product =>
      product.quantity <= product.lowStockThreshold
    );
  }

  async getInventoryStats(): Promise<{
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  }> {
    const allProducts = Array.from(this.products.values());
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

export const storage = new MemStorage();
