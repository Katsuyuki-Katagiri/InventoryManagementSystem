import { useState } from "react";
import { useQuery } from "@tanstack/react-query";
import StatsCards from "@/components/inventory/stats-cards";
import ProductsTable from "@/components/inventory/products-table";
import AddProductModal from "@/components/inventory/add-product-modal";
import EditProductModal from "@/components/inventory/edit-product-modal";
import { type Product } from "@shared/schema";
import { Box, Bell, User } from "lucide-react";

export default function InventoryPage() {
  const [searchQuery, setSearchQuery] = useState("");
  const [categoryFilter, setCategoryFilter] = useState("");
  const [isAddModalOpen, setIsAddModalOpen] = useState(false);
  const [editingProduct, setEditingProduct] = useState<Product | null>(null);

  const { data: products = [], isLoading, refetch } = useQuery({
    queryKey: ["/api/products", { search: searchQuery, category: categoryFilter === "all" ? "" : categoryFilter }],
    enabled: true,
  });

  const { data: stats } = useQuery({
    queryKey: ["/api/inventory/stats"],
    enabled: true,
  });

  const handleEditProduct = (product: Product) => {
    setEditingProduct(product);
  };

  const handleCloseEditModal = () => {
    setEditingProduct(null);
  };

  const handleRefetch = () => {
    refetch();
  };

  const handleCategoryChange = (category: string) => {
    setCategoryFilter(category === "all" ? "" : category);
  };

  return (
    <div className="min-h-screen bg-slate-50">
      {/* Header */}
      <header className="bg-white shadow-sm border-b border-slate-200">
        <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
          <div className="flex justify-between items-center h-16">
            <div className="flex items-center">
              <Box className="text-primary text-2xl mr-3" />
              <h1 className="text-xl font-semibold text-slate-900">在庫管理システム</h1>
            </div>
            <div className="flex items-center space-x-4">
              <button className="text-slate-600 hover:text-slate-900 transition-colors">
                <Bell className="h-5 w-5" />
              </button>
              <div className="w-8 h-8 bg-primary rounded-full flex items-center justify-center">
                <User className="h-4 w-4 text-white" />
              </div>
            </div>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <StatsCards stats={stats} />
        
        <ProductsTable
          products={products}
          isLoading={isLoading}
          searchQuery={searchQuery}
          onSearchChange={setSearchQuery}
          categoryFilter={categoryFilter}
          onCategoryChange={handleCategoryChange}
          onAddProduct={() => setIsAddModalOpen(true)}
          onEditProduct={handleEditProduct}
          onRefetch={handleRefetch}
        />
      </main>

      {/* Modals */}
      <AddProductModal 
        isOpen={isAddModalOpen}
        onClose={() => setIsAddModalOpen(false)}
        onSuccess={handleRefetch}
      />
      
      {editingProduct && (
        <EditProductModal
          product={editingProduct}
          isOpen={!!editingProduct}
          onClose={handleCloseEditModal}
          onSuccess={handleRefetch}
        />
      )}
    </div>
  );
}
