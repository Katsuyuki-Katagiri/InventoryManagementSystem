import { useMutation, useQueryClient } from "@tanstack/react-query";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription } from "@/components/ui/dialog";
import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import { useToast } from "@/hooks/use-toast";
import { apiRequest } from "@/lib/queryClient";
import { insertProductSchema, MEDICAL_DEVICE_CATEGORIES, type InsertProduct } from "@shared/schema";
import { Plus } from "lucide-react";
import DepartmentSelector from "./department-selector";

interface AddProductModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSuccess: () => void;
}

export default function AddProductModal({ isOpen, onClose, onSuccess }: AddProductModalProps) {
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const form = useForm<InsertProduct & { 
    quantity: number;
    lotNumber: string;
    expiryDate: string;
    storageLocation: string;
    facilityName: string;
    responsiblePerson: string;
    remarks: string;
  }>({
    resolver: zodResolver(insertProductSchema),
    defaultValues: {
      productCode: "",
      genericName: "",
      commercialName: "",
      category: "",
      specification: "",
      assetClassification: "",
      price: "0",
      lowStockThreshold: 10,
      quantity: 0,
      lotNumber: "",
      expiryDate: "",
      storageLocation: "",
      facilityName: "",
      responsiblePerson: "",
      remarks: "",
    },
  });

  const createProductMutation = useMutation({
    mutationFn: async (data: any) => {
      // Separate product data from inventory data
      const productData = {
        productCode: data.productCode,
        genericName: data.genericName,
        commercialName: data.commercialName,
        category: data.category,
        specification: data.specification,
        assetClassification: data.assetClassification,
        price: data.price,
        lowStockThreshold: data.lowStockThreshold,
      };

      const inventoryData = {
        quantity: data.quantity,
        lotNumber: data.lotNumber,
        expiryDate: data.expiryDate,
        storageLocation: data.storageLocation,
        facilityName: data.facilityName,
        responsiblePerson: data.responsiblePerson,
        remarks: data.remarks,
      };

      const response = await fetch("/api/products/with-inventory", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({ product: productData, inventory: inventoryData }),
      });
      if (!response.ok) throw new Error("Failed to create product with inventory");
      return response.json();
    },
    onSuccess: () => {
      toast({
        title: "成功",
        description: "医療機器が正常に追加されました。",
      });
      queryClient.invalidateQueries({ queryKey: ["/api/products"] });
      queryClient.invalidateQueries({ queryKey: ["/api/stats"] });
      form.reset();
      onSuccess();
      onClose();
    },
    onError: (error: any) => {
      toast({
        title: "エラー",
        description: error.message || "医療機器の追加に失敗しました。",
        variant: "destructive",
      });
    },
  });

  const onSubmit = (data: InsertProduct) => {
    createProductMutation.mutate(data);
  };

  return (
    <Dialog open={isOpen} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-[800px] max-h-[90vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <Plus className="h-5 w-5" />
            新しい医療機器を追加
          </DialogTitle>
          <DialogDescription>
            医療機器の詳細情報を入力して在庫管理システムに追加してください。
          </DialogDescription>
        </DialogHeader>

        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {/* Product Code */}
              <FormField
                control={form.control}
                name="productCode"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>商品コード *</FormLabel>
                    <FormControl>
                      <Input placeholder="例: MD001" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Generic Name */}
              <FormField
                control={form.control}
                name="genericName"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>一般名 *</FormLabel>
                    <FormControl>
                      <Input placeholder="例: 静脈カテーテル" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Commercial Name */}
              <FormField
                control={form.control}
                name="commercialName"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>販売名</FormLabel>
                    <FormControl>
                      <Input placeholder="例: メディカテーテル Pro" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Category */}
              <FormField
                control={form.control}
                name="category"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>カテゴリー *</FormLabel>
                    <Select onValueChange={field.onChange} defaultValue={field.value}>
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="カテゴリーを選択" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        {MEDICAL_DEVICE_CATEGORIES.map((category) => (
                          <SelectItem key={category} value={category}>
                            {category}
                          </SelectItem>
                        ))}
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Asset Classification */}
              <FormField
                control={form.control}
                name="assetClassification"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>資産分類</FormLabel>
                    <Select onValueChange={field.onChange} defaultValue={field.value || ""}>
                      <FormControl>
                        <SelectTrigger>
                          <SelectValue placeholder="資産分類を選択" />
                        </SelectTrigger>
                      </FormControl>
                      <SelectContent>
                        <SelectItem value="消耗品">消耗品</SelectItem>
                        <SelectItem value="固定資産">固定資産</SelectItem>
                        <SelectItem value="レンタル">レンタル</SelectItem>
                        <SelectItem value="リース">リース</SelectItem>
                      </SelectContent>
                    </Select>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Price */}
              <FormField
                control={form.control}
                name="price"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>価格 *</FormLabel>
                    <FormControl>
                      <Input 
                        type="number" 
                        placeholder="0" 
                        {...field}
                        onChange={(e) => field.onChange(e.target.value)}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Low Stock Threshold */}
              <FormField
                control={form.control}
                name="lowStockThreshold"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>最小在庫数</FormLabel>
                    <FormControl>
                      <Input 
                        type="number" 
                        placeholder="10" 
                        {...field}
                        onChange={(e) => field.onChange(Number(e.target.value))}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>

            {/* Specification */}
            <FormField
              control={form.control}
              name="specification"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>規格・仕様</FormLabel>
                  <FormControl>
                    <Textarea 
                      placeholder="医療機器の詳細な規格や仕様を入力してください"
                      rows={3}
                      value={field.value || ""}
                      onChange={field.onChange}
                      onBlur={field.onBlur}
                      name={field.name}
                      ref={field.ref}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            {/* Inventory Information */}
            <div className="grid grid-cols-2 gap-4">
              {/* Quantity */}
              <FormField
                control={form.control}
                name="quantity"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>在庫数 *</FormLabel>
                    <FormControl>
                      <Input 
                        type="number" 
                        placeholder="0" 
                        {...field}
                        onChange={(e) => field.onChange(Number(e.target.value))}
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Lot Number */}
              <FormField
                control={form.control}
                name="lotNumber"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>ロット番号</FormLabel>
                    <FormControl>
                      <Input placeholder="ロット番号を入力" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Expiry Date */}
              <FormField
                control={form.control}
                name="expiryDate"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>有効期限</FormLabel>
                    <FormControl>
                      <Input 
                        type="date" 
                        {...field} 
                      />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Storage Location */}
              <FormField
                control={form.control}
                name="storageLocation"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>保管場所</FormLabel>
                    <FormControl>
                      <Input placeholder="保管場所を入力" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Facility Name */}
              <FormField
                control={form.control}
                name="facilityName"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>施設名</FormLabel>
                    <FormControl>
                      <Input placeholder="施設名を入力" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              {/* Responsible Person */}
              <FormField
                control={form.control}
                name="responsiblePerson"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>担当者</FormLabel>
                    <FormControl>
                      <Input placeholder="担当者名を入力" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />
            </div>

            {/* Remarks */}
            <FormField
              control={form.control}
              name="remarks"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>備考</FormLabel>
                  <FormControl>
                    <Textarea
                      placeholder="備考を入力"
                      className="resize-none"
                      {...field}
                    />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <div className="flex justify-end gap-3 pt-4">
              <Button type="button" variant="outline" onClick={onClose}>
                キャンセル
              </Button>
              <Button 
                type="submit" 
                disabled={createProductMutation.isPending}
                className="bg-primary hover:bg-primary/90"
              >
                {createProductMutation.isPending ? "追加中..." : "医療機器を追加"}
              </Button>
            </div>
          </form>
        </Form>
      </DialogContent>
    </Dialog>
  );
}