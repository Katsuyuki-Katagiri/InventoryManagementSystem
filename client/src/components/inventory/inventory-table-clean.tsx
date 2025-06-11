import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { format } from "date-fns";
import { ja } from "date-fns/locale";
import { Edit } from "lucide-react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { apiRequest, getQueryFn } from "@/lib/queryClient";
import type { Product, Department, Facility } from "@shared/schema";

interface InventoryTableProps {
  selectedMonth: string;
  selectedDepartment?: string;
  onAddProduct: () => void;
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
  departmentName: string | null;
  responsiblePerson: string | null;
  remarks: string | null;
}

export default function InventoryTableClean({ selectedMonth, selectedDepartment, onAddProduct }: InventoryTableProps) {
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedPerson, setSelectedPerson] = useState("");
  const [editingRow, setEditingRow] = useState<number | null>(null);
  const [editData, setEditData] = useState<any>({});

  const queryClient = useQueryClient();

  const { data: inventoryData = [], isLoading } = useQuery({
    queryKey: ["/api/inventory/detailed", selectedMonth, selectedDepartment],
    queryFn: async () => {
      const params = new URLSearchParams();
      if (selectedMonth) params.append("month", selectedMonth);
      if (selectedDepartment && selectedDepartment !== "all") params.append("department", selectedDepartment);
      
      const url = `/api/inventory/detailed${params.toString() ? `?${params.toString()}` : ""}`;
      const response = await fetch(url);
      if (!response.ok) throw new Error("Failed to fetch inventory data");
      return response.json();
    },
  });

  const { data: departments = [] } = useQuery({
    queryKey: ["/api/departments"],
    queryFn: getQueryFn({ on401: "throw" }),
  });

  const { data: facilities = [] } = useQuery({
    queryKey: ["/api/facilities"],
    queryFn: getQueryFn({ on401: "throw" }),
  });

  const updateInventoryMutation = useMutation({
    mutationFn: async ({ id, data }: { id: number; data: any }) => {
      return apiRequest("PATCH", `/api/inventory/${id}`, data);
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["/api/inventory/detailed"] });
      setEditingRow(null);
      setEditData({});
    },
  });

  const formatDate = (date: Date | null) => {
    if (!date) return "-";
    return format(new Date(date), "yyyy/MM/dd", { locale: ja });
  };

  const getCategoryBadgeColor = (category: string) => {
    const colorMap: { [key: string]: string } = {
      "その他": "bg-gray-500 text-white border-gray-600",
      "エステック": "bg-red-500 text-white border-red-600",
      "カテーテル": "bg-blue-500 text-white border-blue-600",
      "ガーゼ・包帯": "bg-green-500 text-white border-green-600",
      "サキューム": "bg-yellow-500 text-black border-yellow-600",
      "セレス": "bg-purple-500 text-white border-purple-600",
      "ソフィットベント": "bg-orange-500 text-white border-orange-600",
      "ソフィット気管切開チューブ": "bg-pink-500 text-white border-pink-600",
      "ソルターラブ社製品": "bg-indigo-500 text-white border-indigo-600",
      "ヘモネティクス社製品": "bg-teal-500 text-white border-teal-600",
      "メラその他ディスポ": "bg-cyan-500 text-white border-cyan-600",
      "メラ人工心肺回路": "bg-red-600 text-white border-red-700",
      "メラ人工心肺装置": "bg-blue-600 text-white border-blue-700",
      "人工弁": "bg-green-600 text-white border-green-700",
      "人工心肺回路": "bg-yellow-600 text-black border-yellow-700",
      "人工肺・リザーバ": "bg-purple-600 text-white border-purple-700",
      "他社製ディスポ": "bg-orange-600 text-white border-orange-700",
      "他社製装置": "bg-pink-600 text-white border-pink-700",
      "体外循環用カニューレ": "bg-indigo-600 text-white border-indigo-700",
      "外科一般器械": "bg-teal-600 text-white border-teal-700",
      "心臓手術器械": "bg-cyan-600 text-white border-cyan-700",
      "手術器具": "bg-red-400 text-white border-red-500",
      "手術室器械": "bg-blue-400 text-white border-blue-500",
      "推奨商品": "bg-green-400 text-white border-green-500",
      "注射器・針": "bg-yellow-400 text-black border-yellow-500",
      "縫合材料": "bg-purple-400 text-white border-purple-500",
      "輸液セット": "bg-orange-400 text-white border-orange-500",
      "酸素供給チューブ": "bg-pink-400 text-white border-pink-500",
      "電気メス関連ディスポ": "bg-indigo-400 text-white border-indigo-500",
      "電気メス関連装置": "bg-teal-400 text-white border-teal-500",
      "麻酔器関連装置": "bg-cyan-400 text-white border-cyan-500",
      "麻酔用呼吸回路": "bg-red-300 text-black border-red-400",
      "麻酔関連製品ディスポ": "bg-blue-300 text-black border-blue-400",
      "ＡＳＡＮＵＳ社製品": "bg-green-300 text-black border-green-400",
      "ＢＯＳＳ社製品": "bg-yellow-300 text-black border-yellow-400",
      "ＩＡＢＰ関連ディスポ": "bg-purple-300 text-black border-purple-400",
      "ＩＡＢＰ関連装置": "bg-orange-300 text-black border-orange-400",
      "ＯｐＩｎｓｔｒｕｍｅｎｔｓ社製品": "bg-pink-300 text-black border-pink-400"
    };
    return colorMap[category] || "bg-slate-500 text-white border-slate-600";
  };

  const handleEdit = (item: InventoryItem) => {
    setEditingRow(item.inventoryId || item.id);
    setEditData({
      quantity: item.quantity,
      shipmentDate: item.shipmentDate,
      shipmentNumber: item.shipmentNumber,
      lotNumber: item.lotNumber,
      expiryDate: item.expiryDate,
      storageLocation: item.storageLocation,
      facilityName: item.facilityName,
      responsiblePerson: item.responsiblePerson,
      remarks: item.remarks,
    });
  };

  const handleSave = () => {
    if (editingRow) {
      updateInventoryMutation.mutate({
        id: editingRow,
        data: editData,
      });
    }
  };

  const handleCancel = () => {
    setEditingRow(null);
    setEditData({});
  };

  const filteredItems = (inventoryData as InventoryItem[]).filter((item: InventoryItem) => {
    const matchesSearch = !searchQuery || 
      item.genericName?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.productCode?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      item.commercialName?.toLowerCase().includes(searchQuery.toLowerCase());
    
    const matchesDepartment = !selectedDepartment || selectedDepartment === "all" || item.departmentName === selectedDepartment;
    const matchesPerson = !selectedPerson || selectedPerson === "all" || item.responsiblePerson === selectedPerson;
    
    return matchesSearch && matchesDepartment && matchesPerson;
  });

  const uniquePersons = Array.from(new Set((inventoryData as InventoryItem[]).map((item: InventoryItem) => item.responsiblePerson).filter(Boolean))) as string[];

  return (
    <Card className="w-full">
      <CardHeader className="sticky top-0 bg-white z-10 border-b">
        <div className="flex items-center justify-between">
          <CardTitle>在庫管理リスト</CardTitle>
          <div className="flex gap-2">
            <Button onClick={onAddProduct}>商品追加</Button>
          </div>
        </div>
        <div className="flex gap-4 items-center">
          <Input
            placeholder="商品名・商品コードで検索..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="max-w-sm"
          />

          <Select value={selectedPerson} onValueChange={setSelectedPerson}>
            <SelectTrigger className="w-48">
              <SelectValue placeholder="担当者で絞り込み" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">すべての担当者</SelectItem>
              {uniquePersons.map((person) => (
                <SelectItem key={person} value={person}>
                  {person}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>
      </CardHeader>
      <CardContent className="p-0">
        <div className="h-[calc(100vh-450px)] overflow-auto">
          {/* 固定ヘッダー */}
          <div className="sticky top-0 z-50 bg-white border-b-2 border-gray-300 shadow-sm">
            <div className="flex bg-white text-xs font-medium text-gray-700 py-3 px-2" style={{ minWidth: '1200px' }}>
              <div className="w-12 px-1 text-center border-r border-gray-200 flex-shrink-0">行No</div>
              <div className="w-24 px-1 text-left border-r border-gray-200 flex-shrink-0">商品コード</div>
              <div className="w-40 px-1 text-left border-r border-gray-200 flex-shrink-0">製品名</div>
              <div className="w-16 px-1 text-center border-r border-gray-200 flex-shrink-0">在庫数</div>
              <div className="w-24 px-1 text-left border-r border-gray-200 flex-shrink-0">出荷伝票日付</div>
              <div className="w-20 px-1 text-left border-r border-gray-200 flex-shrink-0">出荷伝票№</div>
              <div className="w-20 px-1 text-left border-r border-gray-200 flex-shrink-0">LOT</div>
              <div className="w-20 px-1 text-left border-r border-gray-200 flex-shrink-0">UBD</div>
              <div className="w-24 px-1 text-left border-r border-gray-200 flex-shrink-0">保管場所</div>
              <div className="w-24 px-1 text-left border-r border-gray-200 flex-shrink-0">施設名</div>
              <div className="w-20 px-1 text-left border-r border-gray-200 flex-shrink-0">担当者名</div>
              <div className="w-24 px-1 text-left border-r border-gray-200 flex-shrink-0">備考</div>
              <div className="w-16 px-1 text-center flex-shrink-0">修正</div>
            </div>
          </div>
          
          {/* スクロール可能なコンテンツ */}
          <div className="px-2">
            {isLoading ? (
              <div className="text-center py-8">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mx-auto"></div>
                <p className="text-gray-500 mt-2">読み込み中...</p>
              </div>
            ) : filteredItems.length === 0 ? (
              <div className="text-center py-8 text-gray-500">
                {searchQuery ? "検索条件に一致する商品が見つかりません" : "在庫データがありません"}
              </div>
            ) : (
              filteredItems.map((item: InventoryItem, index: number) => {
                const isEditing = editingRow === (item.inventoryId || item.id);
                
                return (
                  <div key={`${item.id}-${item.inventoryId || 0}`} className="flex py-2 border-b hover:bg-gray-50 text-xs" style={{ minWidth: '1200px' }}>
                    <div className="w-12 px-1 text-center border-r border-gray-200 flex-shrink-0 text-gray-500">{index + 1}</div>
                    <div className="w-24 px-1 font-mono border-r border-gray-200 flex-shrink-0">{item.productCode}</div>
                    <div className="w-40 px-1 border-r border-gray-200 flex-shrink-0">
                      <div className="font-medium text-sm truncate">{item.genericName}</div>
                      {item.commercialName && (
                        <div className="text-xs text-gray-500 truncate">{item.commercialName}</div>
                      )}
                      <Badge 
                        variant="outline" 
                        className={`mt-1 text-xs ${getCategoryBadgeColor(item.category)}`}
                      >
                        {item.category}
                      </Badge>
                    </div>
                    <div className="w-16 px-1 text-center font-medium border-r border-gray-200 flex-shrink-0">
                      {isEditing ? (
                        <Input
                          type="number"
                          value={editData.quantity || item.quantity}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            quantity: parseInt(e.target.value) || 0
                          }))}
                          className="w-12 text-xs text-center"
                        />
                      ) : (
                        item.quantity
                      )}
                    </div>
                    <div className={`w-24 px-1 border-r border-gray-200 flex-shrink-0 ${!item.shipmentDate ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          type="date"
                          value={editData.shipmentDate ? format(new Date(editData.shipmentDate), "yyyy-MM-dd") : (item.shipmentDate ? format(new Date(item.shipmentDate), "yyyy-MM-dd") : "")}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            shipmentDate: e.target.value || null
                          }))}
                          className="w-20 text-xs"
                        />
                      ) : (
                        formatDate(item.shipmentDate)
                      )}
                    </div>
                    <div className={`w-20 px-1 border-r border-gray-200 flex-shrink-0 ${!item.shipmentNumber ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.shipmentNumber || ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            shipmentNumber: e.target.value
                          }))}
                          className="w-16 text-xs"
                        />
                      ) : (
                        item.shipmentNumber || "-"
                      )}
                    </div>
                    <div className={`w-20 px-1 font-mono border-r border-gray-200 flex-shrink-0 ${!item.lotNumber ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.lotNumber || item.lotNumber}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            lotNumber: e.target.value
                          }))}
                          className="w-16 text-xs"
                        />
                      ) : (
                        item.lotNumber
                      )}
                    </div>
                    <div className={`w-20 px-1 border-r border-gray-200 flex-shrink-0 ${!item.expiryDate ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          type="date"
                          value={editData.expiryDate ? format(new Date(editData.expiryDate), "yyyy-MM-dd") : ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            expiryDate: e.target.value || null
                          }))}
                          className="w-16 text-xs"
                        />
                      ) : (
                        formatDate(item.expiryDate)
                      )}
                    </div>
                    <div className={`w-24 px-1 border-r border-gray-200 flex-shrink-0 ${!item.storageLocation ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.storageLocation || ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            storageLocation: e.target.value
                          }))}
                          className="w-20 text-xs"
                        />
                      ) : (
                        item.storageLocation || "-"
                      )}
                    </div>
                    <div className={`w-24 px-1 border-r border-gray-200 flex-shrink-0 ${!item.facilityName ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.facilityName || ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            facilityName: e.target.value
                          }))}
                          className="w-20 text-xs"
                        />
                      ) : (
                        item.facilityName || ""
                      )}
                    </div>
                    <div className={`w-20 px-1 border-r border-gray-200 flex-shrink-0 ${!item.responsiblePerson ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.responsiblePerson || ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            responsiblePerson: e.target.value
                          }))}
                          className="w-16 text-xs"
                        />
                      ) : (
                        item.responsiblePerson || ""
                      )}
                    </div>
                    <div className={`w-24 px-1 border-r border-gray-200 flex-shrink-0 ${!item.remarks ? "bg-yellow-100" : ""}`}>
                      {isEditing ? (
                        <Input
                          value={editData.remarks || ""}
                          onChange={(e) => setEditData((prev: any) => ({
                            ...prev,
                            remarks: e.target.value
                          }))}
                          className="w-20 text-xs"
                        />
                      ) : (
                        item.remarks || "-"
                      )}
                    </div>
                    <div className="w-16 px-1 text-center flex-shrink-0">
                      {isEditing ? (
                        <div className="flex flex-col gap-1">
                          <Button size="sm" onClick={handleSave} disabled={updateInventoryMutation.isPending}>
                            保存
                          </Button>
                          <Button variant="outline" size="sm" onClick={handleCancel}>
                            キャンセル
                          </Button>
                        </div>
                      ) : (
                        <Button variant="outline" size="sm" onClick={() => handleEdit(item)}>
                          <Edit className="h-3 w-3" />
                        </Button>
                      )}
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </div>
      </CardContent>
    </Card>
  );
}