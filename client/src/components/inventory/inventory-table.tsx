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

export default function InventoryTable({ onAddProduct, onImportExcel }: InventoryTableProps) {
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [searchQuery, setSearchQuery] = useState("");
  const [editingRow, setEditingRow] = useState<number | null>(null);
  const [editData, setEditData] = useState<Partial<InventoryItem>>({});

  // Fetch inventory data with product details
  const { data: inventoryItems = [], isLoading } = useQuery<InventoryItem[]>({
    queryKey: ['/api/inventory/detailed'],
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

  const filteredItems = inventoryItems.filter(item =>
    item.productCode.toLowerCase().includes(searchQuery.toLowerCase()) ||
    item.genericName.toLowerCase().includes(searchQuery.toLowerCase()) ||
    item.commercialName?.toLowerCase().includes(searchQuery.toLowerCase())
  );

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

  return (
    <Card className="w-full">
      <CardHeader>
        <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between">
          <CardTitle className="text-lg font-semibold">在庫管理リスト</CardTitle>
          <div className="flex flex-col sm:flex-row gap-2 mt-4 sm:mt-0">
            <div className="relative">
              <Input
                type="text"
                placeholder="商品を検索..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-10 w-full sm:w-64"
              />
              <Search className="absolute left-3 top-3 h-4 w-4 text-gray-400" />
            </div>
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
      </CardHeader>
      <CardContent className="p-0">
        <div className="overflow-x-auto">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>商品コード</TableHead>
                <TableHead>製品名</TableHead>
                <TableHead>在庫数</TableHead>
                <TableHead>出荷伝票日付</TableHead>
                <TableHead>出荷伝票№</TableHead>
                <TableHead>LOT</TableHead>
                <TableHead>UBD</TableHead>
                <TableHead>保管場所</TableHead>
                <TableHead>施設名</TableHead>
                <TableHead>担当者名</TableHead>
                <TableHead>備考</TableHead>
                <TableHead>操作</TableHead>
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
                      <TableCell className="font-mono text-sm">{item.productCode}</TableCell>
                      <TableCell>
                        <div>
                          <div className="font-medium">{item.genericName}</div>
                          {item.commercialName && (
                            <div className="text-sm text-gray-500">{item.commercialName}</div>
                          )}
                          <Badge variant="outline" className="mt-1 text-xs">
                            {item.category}
                          </Badge>
                        </div>
                      </TableCell>
                      <TableCell className="text-center font-medium">
                        {item.quantity}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            type="date"
                            value={editData.shipmentDate ? format(new Date(editData.shipmentDate), "yyyy-MM-dd") : ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              shipmentDate: e.target.value ? new Date(e.target.value) : null
                            }))}
                            className="w-32"
                          />
                        ) : (
                          formatDate(item.shipmentDate)
                        )}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            value={editData.shipmentNumber || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              shipmentNumber: e.target.value
                            }))}
                            className="w-24"
                          />
                        ) : (
                          item.shipmentNumber || "-"
                        )}
                      </TableCell>
                      <TableCell className="font-mono text-sm">
                        {item.lotNumber}
                      </TableCell>
                      <TableCell>
                        {formatDate(item.expiryDate)}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            value={editData.storageLocation || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              storageLocation: e.target.value
                            }))}
                            className="w-32"
                          />
                        ) : (
                          item.storageLocation || "-"
                        )}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            value={editData.facilityName || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              facilityName: e.target.value
                            }))}
                            className="w-32"
                          />
                        ) : (
                          item.facilityName || "-"
                        )}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            value={editData.responsiblePerson || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              responsiblePerson: e.target.value
                            }))}
                            className="w-32"
                          />
                        ) : (
                          item.responsiblePerson || "-"
                        )}
                      </TableCell>
                      <TableCell>
                        {isEditing ? (
                          <Input
                            value={editData.remarks || ""}
                            onChange={(e) => setEditData(prev => ({
                              ...prev,
                              remarks: e.target.value
                            }))}
                            className="w-32"
                          />
                        ) : (
                          item.remarks || "-"
                        )}
                      </TableCell>
                      <TableCell>
                        <div className="flex items-center space-x-2">
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