import { useMutation, useQueryClient } from "@tanstack/react-query";
import { Card, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Badge } from "@/components/ui/badge";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";
import { AlertDialog, AlertDialogAction, AlertDialogCancel, AlertDialogContent, AlertDialogDescription, AlertDialogFooter, AlertDialogHeader, AlertDialogTitle, AlertDialogTrigger } from "@/components/ui/alert-dialog";
import { useToast } from "@/hooks/use-toast";
import { apiRequest } from "@/lib/queryClient";
import { formatCurrency, getStockStatus, getCategoryColor, getCategoryIcon } from "@/lib/utils";
import { MEDICAL_DEVICE_CATEGORIES, type Product } from "@shared/schema";
import { Search, Plus, Edit, Trash2, Upload } from "lucide-react";

interface ProductsTableProps {
  products: Product[];
  isLoading: boolean;
  searchQuery: string;
  onSearchChange: (query: string) => void;
  categoryFilter: string;
  onCategoryChange: (category: string) => void;
  onAddProduct: () => void;
  onEditProduct: (product: Product) => void;
  onRefetch: () => void;
  onImportExcel: () => void;
}

export default function ProductsTable({
  products,
  isLoading,
  searchQuery,
  onSearchChange,
  categoryFilter,
  onCategoryChange,
  onAddProduct,
  onEditProduct,
  onRefetch,
  onImportExcel,
}: ProductsTableProps) {
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const deleteProductMutation = useMutation({
    mutationFn: async (id: number) => {
      await apiRequest("DELETE", `/api/products/${id}`);
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["/api/products"] });
      queryClient.invalidateQueries({ queryKey: ["/api/inventory/stats"] });
      toast({
        title: "Success",
        description: "Product deleted successfully",
      });
      onRefetch();
    },
    onError: (error: any) => {
      toast({
        title: "Error",
        description: error.message || "Failed to delete product",
        variant: "destructive",
      });
    },
  });

  const handleDeleteProduct = (id: number) => {
    deleteProductMutation.mutate(id);
  };

  if (isLoading) {
    return (
      <Card>
        <CardContent className="p-6">
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <div className="h-6 bg-gray-200 rounded w-32 animate-pulse"></div>
              <div className="flex gap-4">
                <div className="h-10 bg-gray-200 rounded w-64 animate-pulse"></div>
                <div className="h-10 bg-gray-200 rounded w-32 animate-pulse"></div>
                <div className="h-10 bg-gray-200 rounded w-32 animate-pulse"></div>
              </div>
            </div>
            <div className="space-y-3">
              {[...Array(5)].map((_, i) => (
                <div key={i} className="h-16 bg-gray-200 rounded animate-pulse"></div>
              ))}
            </div>
          </div>
        </CardContent>
      </Card>
    );
  }

  return (
    <Card>
      {/* Table Header */}
      <div className="px-6 py-4 border-b border-slate-200">
        <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between">
          <h2 className="text-lg font-semibold text-slate-900 mb-4 sm:mb-0">商品在庫</h2>
          <div className="flex flex-col sm:flex-row gap-4">
            {/* Search Bar */}
            <div className="relative">
              <Input
                type="text"
                placeholder="商品を検索..."
                value={searchQuery}
                onChange={(e) => onSearchChange(e.target.value)}
                className="pl-10 w-full sm:w-64"
              />
              <Search className="absolute left-3 top-3 h-4 w-4 text-slate-400" />
            </div>
            
            {/* Filter Dropdown */}
            <Select value={categoryFilter || undefined} onValueChange={onCategoryChange}>
              <SelectTrigger className="w-full sm:w-40">
                <SelectValue placeholder="全てのカテゴリー" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">全てのカテゴリー</SelectItem>
                {MEDICAL_DEVICE_CATEGORIES.map((category) => (
                  <SelectItem key={category} value={category}>
                    {category.charAt(0).toUpperCase() + category.slice(1)}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
            
            {/* Import Excel Button */}
            <Button 
              variant="outline" 
              onClick={onImportExcel} 
              className="flex items-center"
            >
              <Upload className="mr-2 h-4 w-4" />
              Excelインポート
            </Button>
            
            {/* Add Product Button */}
            <Button onClick={onAddProduct} className="flex items-center">
              <Plus className="mr-2 h-4 w-4" />
              商品追加
            </Button>
          </div>
        </div>
      </div>

      {/* Table Content */}
      <div className="overflow-x-auto">
        <Table>
          <TableHeader>
            <TableRow>
              <TableHead>商品名</TableHead>
              <TableHead>SKU</TableHead>
              <TableHead>カテゴリー</TableHead>
              <TableHead>在庫数</TableHead>
              <TableHead>価格</TableHead>
              <TableHead>状態</TableHead>
              <TableHead className="text-right">操作</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {products.length === 0 ? (
              <TableRow>
                <TableCell colSpan={7} className="text-center py-8 text-slate-500">
                  {searchQuery || categoryFilter ? "No products found matching your criteria" : "No products available"}
                </TableCell>
              </TableRow>
            ) : (
              products.map((product) => {
                const categoryColor = getCategoryColor(product.category);
                const categoryIcon = getCategoryIcon(product.category);

                return (
                  <TableRow key={product.id} className="hover:bg-slate-50">
                    <TableCell>
                      <div className="flex items-center">
                        <div className="flex-shrink-0 h-10 w-10">
                          <div className="h-10 w-10 rounded-lg bg-slate-200 flex items-center justify-center">
                            <i className={`${categoryIcon} text-slate-500`}></i>
                          </div>
                        </div>
                        <div className="ml-4">
                          <div className="text-sm font-medium text-slate-900">{product.genericName}</div>
                          {product.commercialName && (
                            <div className="text-sm text-slate-500">{product.commercialName}</div>
                          )}
                        </div>
                      </div>
                    </TableCell>
                    <TableCell className="text-sm text-slate-900">{product.productCode}</TableCell>
                    <TableCell>
                      <Badge className={categoryColor}>
                        {product.category.charAt(0).toUpperCase() + product.category.slice(1)}
                      </Badge>
                    </TableCell>
                    <TableCell className="text-sm text-slate-900">{product.specification || '-'}</TableCell>
                    <TableCell className="text-sm text-slate-900">
                      {formatCurrency(parseFloat(product.price))}
                    </TableCell>
                    <TableCell>
                      <Badge variant="outline">
                        {product.assetClassification || '未分類'}
                      </Badge>
                    </TableCell>
                    <TableCell className="text-right">
                      <div className="flex justify-end gap-2">
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => onEditProduct(product)}
                          className="text-primary hover:text-blue-700"
                        >
                          <Edit className="h-4 w-4" />
                        </Button>
                        <AlertDialog>
                          <AlertDialogTrigger asChild>
                            <Button
                              variant="ghost"
                              size="sm"
                              className="text-destructive hover:text-red-700"
                            >
                              <Trash2 className="h-4 w-4" />
                            </Button>
                          </AlertDialogTrigger>
                          <AlertDialogContent>
                            <AlertDialogHeader>
                              <AlertDialogTitle>Delete Product</AlertDialogTitle>
                              <AlertDialogDescription>
                                Are you sure you want to delete "{product.genericName}"? This action cannot be undone.
                              </AlertDialogDescription>
                            </AlertDialogHeader>
                            <AlertDialogFooter>
                              <AlertDialogCancel>Cancel</AlertDialogCancel>
                              <AlertDialogAction
                                onClick={() => handleDeleteProduct(product.id)}
                                className="bg-destructive text-destructive-foreground hover:bg-destructive/90"
                              >
                                Delete
                              </AlertDialogAction>
                            </AlertDialogFooter>
                          </AlertDialogContent>
                        </AlertDialog>
                      </div>
                    </TableCell>
                  </TableRow>
                );
              })
            )}
          </TableBody>
        </Table>
      </div>
    </Card>
  );
}
