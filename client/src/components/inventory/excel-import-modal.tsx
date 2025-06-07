import { useState } from "react";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import { Dialog, DialogContent, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Alert, AlertDescription } from "@/components/ui/alert";
import { useToast } from "@/hooks/use-toast";
import { Upload, FileSpreadsheet, AlertCircle, CheckCircle } from "lucide-react";

interface ExcelImportModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSuccess: () => void;
}

interface ImportResult {
  message: string;
  success: number;
  errors: string[];
  imported: any[];
}

export default function ExcelImportModal({ isOpen, onClose, onSuccess }: ExcelImportModalProps) {
  const [selectedFile, setSelectedFile] = useState<File | null>(null);
  const [importResult, setImportResult] = useState<ImportResult | null>(null);
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const importMutation = useMutation({
    mutationFn: async (file: File) => {
      const formData = new FormData();
      formData.append('file', file);
      
      const response = await fetch('/api/products/import', {
        method: 'POST',
        body: formData,
      });
      
      if (!response.ok) {
        const error = await response.json();
        throw new Error(error.message || 'インポートに失敗しました');
      }
      
      return response.json();
    },
    onSuccess: (result: ImportResult) => {
      setImportResult(result);
      queryClient.invalidateQueries({ queryKey: ["/api/products"] });
      queryClient.invalidateQueries({ queryKey: ["/api/inventory/stats"] });
      
      if (result.success > 0) {
        toast({
          title: "インポート完了",
          description: result.message,
        });
        onSuccess();
      }
    },
    onError: (error: any) => {
      toast({
        title: "エラー",
        description: error.message || "インポート中にエラーが発生しました",
        variant: "destructive",
      });
    },
  });

  const handleFileSelect = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      // Validate file type
      const validTypes = [
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
        'application/vnd.ms-excel'
      ];
      
      if (!validTypes.includes(file.type) && !file.name.endsWith('.xlsx') && !file.name.endsWith('.xls')) {
        toast({
          title: "ファイル形式エラー",
          description: "Excelファイル(.xlsx, .xls)のみ対応しています",
          variant: "destructive",
        });
        return;
      }
      
      setSelectedFile(file);
      setImportResult(null);
    }
  };

  const handleImport = () => {
    if (selectedFile) {
      importMutation.mutate(selectedFile);
    }
  };

  const handleClose = () => {
    setSelectedFile(null);
    setImportResult(null);
    onClose();
  };

  const downloadTemplate = () => {
    // Create a sample Excel template
    const templateData = [
      {
        '商品名': 'サンプル商品',
        'SKU': 'SAMPLE-001',
        'カテゴリー': '電子機器',
        '在庫数': 100,
        '価格': 1000,
        '説明': 'サンプル商品の説明',
        '最小在庫': 10
      }
    ];
    
    // Convert to CSV for simplicity (users can save as Excel)
    const csvContent = [
      ['商品名', 'SKU', 'カテゴリー', '在庫数', '価格', '説明', '最小在庫'].join(','),
      templateData.map(row => Object.values(row).join(',')).join('\n')
    ].join('\n');
    
    const blob = new Blob(['\ufeff' + csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = 'inventory_template.csv';
    link.click();
  };

  return (
    <Dialog open={isOpen} onOpenChange={handleClose}>
      <DialogContent className="max-w-md w-full">
        <DialogHeader>
          <DialogTitle className="flex items-center">
            <FileSpreadsheet className="mr-2 h-5 w-5" />
            Excelファイルインポート
          </DialogTitle>
        </DialogHeader>
        
        <div className="space-y-6">
          {/* Template Download */}
          <div className="border rounded-lg p-4 bg-blue-50">
            <h3 className="font-medium text-sm mb-2">テンプレートをダウンロード</h3>
            <p className="text-xs text-gray-600 mb-3">
              正しい形式でデータをインポートするために、まずテンプレートをダウンロードしてください。
            </p>
            <Button variant="outline" size="sm" onClick={downloadTemplate}>
              <FileSpreadsheet className="mr-2 h-4 w-4" />
              テンプレートダウンロード
            </Button>
          </div>

          {/* File Selection */}
          <div className="space-y-4">
            <div>
              <label className="block text-sm font-medium mb-2">
                Excelファイルを選択
              </label>
              <Input
                type="file"
                accept=".xlsx,.xls"
                onChange={handleFileSelect}
                className="cursor-pointer"
              />
            </div>

            {selectedFile && (
              <div className="flex items-center p-3 bg-green-50 rounded-lg">
                <CheckCircle className="h-4 w-4 text-green-600 mr-2" />
                <span className="text-sm text-green-800">
                  {selectedFile.name} が選択されました
                </span>
              </div>
            )}
          </div>

          {/* Import Results */}
          {importResult && (
            <div className="space-y-3">
              {importResult.success > 0 && (
                <Alert className="bg-green-50 border-green-200">
                  <CheckCircle className="h-4 w-4 text-green-600" />
                  <AlertDescription className="text-green-800">
                    {importResult.success}件の商品が正常にインポートされました
                  </AlertDescription>
                </Alert>
              )}
              
              {importResult.errors.length > 0 && (
                <Alert variant="destructive">
                  <AlertCircle className="h-4 w-4" />
                  <AlertDescription>
                    <div className="font-medium mb-2">エラーが発生しました:</div>
                    <ul className="text-xs space-y-1 max-h-32 overflow-y-auto">
                      {importResult.errors.slice(0, 5).map((error, index) => (
                        <li key={index}>• {error}</li>
                      ))}
                      {importResult.errors.length > 5 && (
                        <li>... および他 {importResult.errors.length - 5} 件のエラー</li>
                      )}
                    </ul>
                  </AlertDescription>
                </Alert>
              )}
            </div>
          )}

          {/* Action Buttons */}
          <div className="flex justify-end space-x-3 pt-4 border-t">
            <Button variant="outline" onClick={handleClose}>
              キャンセル
            </Button>
            <Button 
              onClick={handleImport}
              disabled={!selectedFile || importMutation.isPending}
              className="flex items-center"
            >
              {importMutation.isPending ? (
                <>
                  <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white mr-2"></div>
                  インポート中...
                </>
              ) : (
                <>
                  <Upload className="mr-2 h-4 w-4" />
                  インポート開始
                </>
              )}
            </Button>
          </div>

          {/* Instructions */}
          <div className="text-xs text-gray-500 bg-gray-50 p-3 rounded">
            <strong>対応する列名:</strong>
            <br />
            商品名, SKU, カテゴリー, 在庫数, 価格, 説明, 最小在庫
            <br />
            <strong>注意:</strong> 商品名とSKUは必須項目です。
          </div>
        </div>
      </DialogContent>
    </Dialog>
  );
}