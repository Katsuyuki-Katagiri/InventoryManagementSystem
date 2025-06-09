import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { useToast } from "@/hooks/use-toast";
import { apiRequest } from "@/lib/queryClient";
import { type Product, type Inventory } from "@shared/schema";
import { Search, Edit2, Save, X, Plus, Upload } from "lucide-react";
import { format } from "date-fns";
import { ja } from "date-fns/locale";

interface InventoryTableProps {
  selectedMonth: string;
  onAddProduct: () => void;
  onImportExcel: () => void;
}

interface InventoryItem extends Product {
  inventoryId?: number;
  quantity: number;
  lotNumber: string;
  expiryDate: Date | null;
  storageLocation: string | null;
  shipmentDate: Date | null;
  shipmentNumber: string | null;
  facilityName: string | null;
  responsiblePerson: string | null;
  remarks: string | null;
}

export default function InventoryTable({ selectedMonth, onAddProduct, onImportExcel }: InventoryTableProps) {
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [searchQuery, setSearchQuery] = useState("");
  const [editingRow, setEditingRow] = useState<number | null>(null);
  const [editData, setEditData] = useState<Partial<InventoryItem>>({});
  const [departmentFilter, setDepartmentFilter] = useState("");
  const [responsiblePersonFilter, setResponsiblePersonFilter] = useState("");

  // Fetch inventory data with product details filtered by month
  const { data: inventoryItems = [], isLoading } = useQuery<InventoryItem[]>({
    queryKey: ['/api/inventory/detailed', selectedMonth],
  });

  // Update inventory mutation
  const updateInventoryMutation = useMutation({
    mutationFn: async (data: { id: number; updates: Partial<InventoryItem> }) => {
      const response = await fetch(`/api/inventory/${data.id}`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data.updates),
      });
      if (!response.ok) {
        throw new Error('Failed to update inventory');
      }
      return response.json();
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ['/api/inventory/detailed'] });
      setEditingRow(null);
      setEditData({});
      toast({
        title: "更新完了",
        description: "在庫情報を更新しました",
      });
    },
    onError: (error: any) => {
      toast({
        title: "エラー",
        description: "在庫情報の更新に失敗しました",
        variant: "destructive",
      });
    },
  });

  // Filter items only with stock quantity > 0 and apply filters
  const filteredItems = inventoryItems.filter(item => {
    // Only show items with stock
    if (item.quantity <= 0) return false;
    
    const matchesSearch = item.productCode.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.genericName.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.commercialName?.toLowerCase().includes(searchQuery.toLowerCase());
    
    const matchesDepartment = !departmentFilter || departmentFilter === "all" || (item as any).departmentName === departmentFilter;
    const matchesResponsiblePerson = !responsiblePersonFilter || responsiblePersonFilter === "all" || item.responsiblePerson === responsiblePersonFilter;
    
    return matchesSearch && matchesDepartment && matchesResponsiblePerson;
  });

  // Get unique departments and responsible persons for filters
  const uniqueDepartments = Array.from(new Set(inventoryItems.map((item: any) => item.departmentName).filter(Boolean)));
  const uniqueResponsiblePersons = Array.from(new Set(inventoryItems.map(item => item.responsiblePerson).filter(Boolean))).filter(person => person !== null) as string[];

  const handleEdit = (item: InventoryItem) => {
    setEditingRow(item.inventoryId || item.id);
    setEditData({
      shipmentDate: item.shipmentDate,
      shipmentNumber: item.shipmentNumber,
      storageLocation: item.storageLocation,
      facilityName: item.facilityName,
      responsiblePerson: item.responsiblePerson,
      remarks: item.remarks,
    });
  };

  const handleSave = () => {
    if (editingRow && Object.keys(editData).length > 0) {
      updateInventoryMutation.mutate({
        id: editingRow,
        updates: editData,
      });
    }
  };

  const handleCancel = () => {
    setEditingRow(null);
    setEditData({});
  };

  const formatDate = (date: Date | null) => {
    if (!date) return "-";
    return format(new Date(date), "yyyy/MM/dd", { locale: ja });
  };

  const getCategoryBadgeColor = (category: string) => {
    const colorMap: { [key: string]: string } = {
      "人工心肺回路": "bg-red-500 text-white border-red-600",
      "補助循環回路": "bg-blue-500 text-white border-blue-600", 
      "IVセット": "bg-green-500 text-white border-green-600",
      "輸液ポンプ": "bg-purple-500 text-white border-purple-600",
      "シリンジポンプ": "bg-yellow-500 text-black border-yellow-600",
      "人工呼吸器": "bg-orange-500 text-white border-orange-600",
      "モニター": "bg-pink-500 text-white border-pink-600",
      "その他": "bg-indigo-500 text-white border-indigo-600"
    };
    return colorMap[category] || "bg-gray-500 text-white border-gray-600";
  };

  return (
    <Card className="w-full">
      <CardHeader className="sticky top-0 bg-white z-10 border-b">
        <div className="flex flex-col space-y-4">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between">
            <CardTitle className="text-lg font-semibold">在庫管理リスト</CardTitle>
            <div className="flex flex-col sm:flex-row gap-2 mt-4 sm:mt-0">
              <Button variant="outline" onClick={onImportExcel}>
                <Upload className="mr-2 h-4 w-4" />
                Excelインポート
              </Button>
              <Button onClick={onAddProduct}>
                <Plus className="mr-2 h-4 w-4" />
                商品追加
              </Button>
            </div>
          </div>
          
          {/* Filter Controls */}
          <div className="flex flex-col sm:flex-row gap-2">
            <div className="relative flex-1">
              <Input
                type="text"
                placeholder="商品を検索..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-10"
              />
              <Search className="absolute left-3 top-3 h-4 w-4 text-gray-400" />
            </div>
            
            <Select value={departmentFilter || "all"} onValueChange={setDepartmentFilter}>
              <SelectTrigger className="w-full sm:w-48">
                <SelectValue placeholder="部門で絞り込み" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">すべての部門</SelectItem>
                {uniqueDepartments.filter(dept => dept && dept.trim() !== "").map((dept) => (
                  <SelectItem key={dept} value={dept}>
                    {dept}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
            
            <Select value={responsiblePersonFilter || "all"} onValueChange={setResponsiblePersonFilter}>
              <SelectTrigger className="w-full sm:w-48">
                <SelectValue placeholder="担当者で絞り込み" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">すべての担当者</SelectItem>
                {uniqueResponsiblePersons.filter(person => person && person.trim() !== "").map((person) => (
                  <SelectItem key={person} value={person}>
                    {person}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </div>
      </CardHeader>
      <CardContent className="p-0">
        <div className="h-[calc(100vh-400px)] overflow-auto border">
          <Table className="w-full table-fixed">
            <TableHeader className="sticky top-0 bg-white z-10 border-b-2 border-gray-300">
              <TableRow>
                <TableHead className="w-[100px] px-1 text-xs font-medium bg-white sticky top-0">商品コード</TableHead>
                <TableHead className="w-[160px] px-1 text-xs font-medium bg-white sticky top-0">製品名</TableHead>
                <TableHead className="w-[60px] px-1 text-xs font-medium text-center bg-white sticky top-0">在庫数</TableHead>
                <TableHead className="w-[100px] px-1 text-xs font-medium bg-white sticky top-0">出荷伝票日付</TableHead>
                <TableHead className="w-[80px] px-1 text-xs font-medium bg-white sticky top-0">出荷伝票№</TableHead>
                <TableHead className="w-[80px] px-1 text-xs font-medium bg-white sticky top-0">LOT</TableHead>
                <TableHead className="w-[80px] px-1 text-xs font-medium bg-white sticky top-0">UBD</TableHead>
                <TableHead className="w-[100px] px-1 text-xs font-medium bg-white sticky top-0">保管場所</TableHead>
                <TableHead className="w-[100px] px-1 text-xs font-medium bg-white sticky top-0">施設名</TableHead>
                <TableHead className="w-[80px] px-1 text-xs font-medium bg-white sticky top-0">担当者名</TableHead>
                <TableHead className="w-[100px] px-1 text-xs font-medium bg-white sticky top-0">備考</TableHead>
                <TableHead className="w-[60px] px-1 text-xs font-medium text-center bg-white sticky top-0">操作</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {isLoading ? (
                <TableRow>
                  <TableCell colSpan={12} className="text-center py-8">
                    <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mx-auto"></div>
                    <p className="text-gray-500 mt-2">読み込み中...</p>
                  </TableCell>
                </TableRow>
              ) : filteredItems.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={12} className="text-center py-8 text-gray-500">
                    {searchQuery ? "検索条件に一致する商品が見つかりません" : "在庫データがありません"}
                  </TableCell>
                </TableRow>
              ) : (
                filteredItems.map((item) => {
                  const isEditing = editingRow === (item.inventoryId || item.id);
                  
                  return (
                    <TableRow key={`${item.id}-${item.inventoryId || 0}`} className="hover:bg-gray-50">
                      <TableCell className="w-[100px] px-1">
                        <div className="font-mono text-xs">{item.productCode}</div>
                      </TableCell>
                      <TableCell className="w-[160px] px-1">
                        <div>
                          <div className="font-medium text-sm">{item.genericName}</div>
                          {item.commercialName && (
                            <div className="text-xs text-gray-500">{item.commercialName}</div>
                          )}
                          <Badge 
                            variant="outline" 
                            className={`mt-1 text-xs ${getCategoryBadgeColor(item.category)}`}
                          >
                            {item.category}
                          </Badge>
                        </div>
                      </TableCell>
                      <TableCell className="w-[60px] px-1 text-center font-medium text-sm">
                        {item.quantity}
                      </TableCell>
                      <TableCell className={`w-[100px] px-1 ${!item.shipmentDate ? "bg-yellow-100" : ""}`}>
                        {isEditing ? (
                          <Input
                            type="date"
                            value={editData.shipmentDate ? format(new Date(editData.shipmentDate), "yyyy-MM-dd") : ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              shipmentDate: e.target.value ? new Date(e.target.value) : null
                            }))}
                            className="w-24 text-xs"
                          />
                        ) : (
                          <div className="text-xs">{formatDate(item.shipmentDate)}</div>
                        )}
                      </TableCell>
                      <TableCell className={`w-[80px] px-1 ${!item.shipmentNumber ? "bg-yellow-100" : ""}`}>
                        {isEditing ? (
                          <Input
                            value={editData.shipmentNumber || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              shipmentNumber: e.target.value
                            }))}
                            className="w-20 text-xs"
                          />
                        ) : (
                          <div className="text-xs">{item.shipmentNumber || "-"}</div>
                        )}
                      </TableCell>
                      <TableCell className="w-[80px] px-1 font-mono text-xs">
                        {item.lotNumber}
                      </TableCell>
                      <TableCell className="w-[80px] px-1 text-xs">
                        {formatDate(item.expiryDate)}
                      </TableCell>
                      <TableCell className={`w-[100px] px-1 ${!item.storageLocation ? "bg-yellow-100" : ""}`}>
                        {isEditing ? (
                          <Input
                            value={editData.storageLocation || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              storageLocation: e.target.value
                            }))}
                            className="w-24 text-xs"
                          />
                        ) : (
                          <div className="text-xs">{item.storageLocation || "-"}</div>
                        )}
                      </TableCell>
                      <TableCell className={`w-[100px] px-1 ${!item.facilityName ? "bg-yellow-100" : ""}`}>
                        <div className="text-xs">{item.facilityName || "-"}</div>
                      </TableCell>
                      <TableCell className={`w-[80px] px-1 ${!item.responsiblePerson ? "bg-yellow-100" : ""}`}>
                        <div className="text-xs">{item.responsiblePerson || "-"}</div>
                      </TableCell>
                      <TableCell className={`w-[100px] px-1 ${!item.remarks ? "bg-yellow-100" : ""}`}>
                        {isEditing ? (
                          <Input
                            value={editData.remarks || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              remarks: e.target.value
                            }))}
                            className="w-24 text-xs"
                          />
                        ) : (
                          <div className="text-xs">{item.remarks || "-"}</div>
                        )}
                      </TableCell>
                      <TableCell className="w-[60px] px-1">
                        <div className="flex items-center justify-center">
                          {isEditing ? (
                            <>
                              <Button
                                size="sm"
                                onClick={handleSave}
                                disabled={updateInventoryMutation.isPending}
                              >
                                <Save className="h-4 w-4" />
                              </Button>
                              <Button
                                size="sm"
                                variant="outline"
                                onClick={handleCancel}
                              >
                                <X className="h-4 w-4" />
                              </Button>
                            </>
                          ) : (
                            <Button
                              size="sm"
                              variant="ghost"
                              onClick={() => handleEdit(item)}
                            >
                              <Edit2 className="h-4 w-4" />
                            </Button>
                          )}
                        </div>
                      </TableCell>
                    </TableRow>
                  );
                })
              )}
            </TableBody>
          </Table>
        </div>
      </CardContent>
    </Card>
  );
}