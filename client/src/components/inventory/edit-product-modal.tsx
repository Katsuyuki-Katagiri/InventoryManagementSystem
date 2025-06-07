import { useMutation, useQueryClient } from "@tanstack/react-query";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import { Dialog, DialogContent, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Form, FormControl, FormField, FormItem, FormLabel, FormMessage } from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Textarea } from "@/components/ui/textarea";
import { useToast } from "@/hooks/use-toast";
import { updateProductSchema, MEDICAL_DEVICE_CATEGORIES, type UpdateProduct, type Product } from "@shared/schema";
import { Save } from "lucide-react";
import { useEffect } from "react";

interface EditProductModalProps {
  product: Product;
  isOpen: boolean;
  onClose: () => void;
  onSuccess: () => void;
}

export default function EditProductModal({ product, isOpen, onClose, onSuccess }: EditProductModalProps) {
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const form = useForm<UpdateProduct>({
    resolver: zodResolver(updateProductSchema),
    defaultValues: {
      productCode: product.productCode,
      genericName: product.genericName,
      commercialName: product.commercialName,
      category: product.category,
      specification: product.specification || "",
      assetClassification: product.assetClassification || "",
      price: product.price,
      lowStockThreshold: product.lowStockThreshold,
    },
  });

  useEffect(() => {
    if (product) {
      form.reset({
        productCode: product.productCode,
        genericName: product.genericName,
        commercialName: product.commercialName,
        category: product.category,
        specification: product.specification || "",
        assetClassification: product.assetClassification || "",
        price: product.price,
        lowStockThreshold: product.lowStockThreshold,
      });
    }
  }, [product, form]);

  const updateProductMutation = useMutation({
    mutationFn: async (data: UpdateProduct) => {
      const response = await fetch(`/api/products/${product.id}`, {
        method: "PATCH",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      });
      if (!response.ok) throw new Error("Failed to update product");
      return response.json();
    },
    onSuccess: () => {
      toast({
        title: "成功",
        description: "医療機器が正常に更新されました。",
      });
      queryClient.invalidateQueries({ queryKey: ["/api/products"] });
      queryClient.invalidateQueries({ queryKey: ["/api/stats"] });
      onSuccess();
      onClose();
    },
    onError: (error: any) => {
      toast({
        title: "エラー",
        description: error.message || "医療機器の更新に失敗しました。",
        variant: "destructive",
      });
    },
  });

  const onSubmit = (data: UpdateProduct) => {
    updateProductMutation.mutate(data);
  };

  return (
    <Dialog open={isOpen} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-[600px]">
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <Save className="h-5 w-5" />
            医療機器を編集
          </DialogTitle>
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
                    <Select onValueChange={field.onChange} value={field.value}>
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
                    <Select onValueChange={field.onChange} value={field.value || ""}>
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

            <div className="flex justify-end gap-3 pt-4">
              <Button type="button" variant="outline" onClick={onClose}>
                キャンセル
              </Button>
              <Button 
                type="submit" 
                disabled={updateProductMutation.isPending}
                className="bg-primary hover:bg-primary/90"
              >
                {updateProductMutation.isPending ? "更新中..." : "医療機器を更新"}
              </Button>
            </div>
          </form>
        </Form>
      </DialogContent>
    </Dialog>
  );
}