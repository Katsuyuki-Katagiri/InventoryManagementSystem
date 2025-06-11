import { useState } from "react";
import { useQuery } from "@tanstack/react-query";
import { Button } from "@/components/ui/button";
import StatsCards from "@/components/inventory/stats-cards";
import InventoryTableClean from "@/components/inventory/inventory-table-clean";
import MonthlySelector from "@/components/inventory/monthly-selector";
import AddProductModal from "@/components/inventory/add-product-modal";
import EditProductModal from "@/components/inventory/edit-product-modal";
import ExcelImportModal from "@/components/inventory/excel-import-modal";
import { type Product } from "@shared/schema";
import { Box, Bell, User, Building } from "lucide-react";
import { Link, useLocation } from "wouter";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";

export default function InventoryPage() {
  const [location] = useLocation();
  const [selectedMonth, setSelectedMonth] = useState("2025-04");
  const [searchQuery, setSearchQuery] = useState("");
  const [categoryFilter, setCategoryFilter] = useState("");
  const [selectedDepartment, setSelectedDepartment] = useState("all");
  const [isAddModalOpen, setIsAddModalOpen] = useState(false);
  const [isImportModalOpen, setIsImportModalOpen] = useState(false);
  const [editingProduct, setEditingProduct] = useState<Product | null>(null);

  const { data: products = [], isLoading, refetch } = useQuery<Product[]>({
    queryKey: ["/api/products", { search: searchQuery, category: categoryFilter === "all" ? "" : categoryFilter }],
    enabled: true,
  });

  const { data: stats } = useQuery<{
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  }>({
    queryKey: ["/api/stats"],
    enabled: true,
  });

  const { data: inventoryData = [] } = useQuery({
    queryKey: ["/api/inventory/detailed", selectedMonth, selectedDepartment],
    queryFn: async () => {
      const params = new URLSearchParams();
      if (selectedMonth) params.append("month", selectedMonth);
      if (selectedDepartment && selectedDepartment !== "all") {
        params.append("department", selectedDepartment);
      }
      
      const url = `/api/inventory/detailed${params.toString() ? `?${params.toString()}` : ""}`;
      const response = await fetch(url);
      if (!response.ok) throw new Error("Failed to fetch inventory data");
      return response.json();
    },
  });

  // Get all departments for the dropdown (not filtered)
  const { data: allInventoryData = [] } = useQuery({
    queryKey: ["/api/inventory/detailed", selectedMonth],
    queryFn: async () => {
      const params = new URLSearchParams();
      if (selectedMonth) params.append("month", selectedMonth);
      
      const url = `/api/inventory/detailed${params.toString() ? `?${params.toString()}` : ""}`;
      const response = await fetch(url);
      if (!response.ok) throw new Error("Failed to fetch inventory data");
      return response.json();
    },
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

  // Extract unique department names from all inventory data (for dropdown)
  const uniqueDepartments = Array.from(
    new Set(
      (allInventoryData as any[])
        .map((item: any) => item.departmentName)
        .filter(Boolean)
    )
  ) as string[];

  // Use the already filtered inventory data from API
  const filteredInventoryData = inventoryData as any[];

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
              <nav className="flex items-center space-x-2 mr-4">
                <Button onClick={() => setIsImportModalOpen(true)} size="sm">
                  <Box className="h-4 w-4 mr-2" />
                  Excelインポート
                </Button>
                <Select value={selectedDepartment} onValueChange={setSelectedDepartment}>
                  <SelectTrigger className="w-48">
                    <Building className="h-4 w-4 mr-2" />
                    <SelectValue placeholder="部門を選択" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="all">全ての部門</SelectItem>
                    {uniqueDepartments.map((dept) => (
                      <SelectItem key={dept} value={dept}>
                        {dept}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </nav>
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
        <div className="grid grid-cols-1 lg:grid-cols-4 gap-6 mb-6">
          <div className="lg:col-span-3">
            <StatsCards stats={stats} filteredData={filteredInventoryData} />
          </div>
          <div>
            <MonthlySelector
              selectedMonth={selectedMonth}
              onMonthChange={setSelectedMonth}
            />
          </div>
        </div>
        
        <InventoryTableClean
          selectedMonth={selectedMonth}
          selectedDepartment={selectedDepartment}
          onAddProduct={() => setIsAddModalOpen(true)}
        />
      </main>

      {/* Modals */}
      <AddProductModal 
        isOpen={isAddModalOpen}
        onClose={() => setIsAddModalOpen(false)}
        onSuccess={handleRefetch}
      />

      <ExcelImportModal
        isOpen={isImportModalOpen}
        onClose={() => setIsImportModalOpen(false)}
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
