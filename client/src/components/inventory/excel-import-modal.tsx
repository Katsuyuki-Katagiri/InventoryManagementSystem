import { useState } from "react";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { useToast } from "@/hooks/use-toast";
import { apiRequest } from "@/lib/queryClient";
import { FileSpreadsheet, Upload, Download, Search, Loader2, CheckCircle, AlertCircle } from "lucide-react";
import { Alert, AlertDescription } from "@/components/ui/alert";

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
  total?: number;
}

interface AnalysisResult {
  sheetNames: string[];
  totalRows: number;
  headers: string[];
  sampleRows: any[][];
  sampleData: any[];
  columnMapping: {
    detected: string[];
    supported: string[];
  };
}

export default function ExcelImportModal({ isOpen, onClose, onSuccess }: ExcelImportModalProps) {
  const [selectedFile, setSelectedFile] = useState<File | null>(null);
  const [importResult, setImportResult] = useState<ImportResult | null>(null);
  const [analysisResult, setAnalysisResult] = useState<AnalysisResult | null>(null);
  const { toast } = useToast();
  const queryClient = useQueryClient();

  const analysisMutation = useMutation({
    mutationFn: async (file: File) => {
      const formData = new FormData();
      formData.append('file', file);

      const response = await fetch('/api/products/analyze', {
        method: 'POST',
        body: formData,
      });

      if (!response.ok) {
        const error = await response.json();
        throw new Error(error.message || 'ファイル解析に失敗しました');
      }

      return response.json();
    },
    onSuccess: (result: AnalysisResult) => {
      setAnalysisResult(result);
      toast({
        title: "ファイル解析完了",
        description: `${result.totalRows}行のデータを検出しました`,
      });
    },
    onError: (error: any) => {
      toast({
        title: "解析エラー",
        description: error.message || "ファイル解析中にエラーが発生しました",
        variant: "destructive",
      });
    },
  });

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
      queryClient.invalidateQueries({ queryKey: ["/api/stats"] });

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
      setAnalysisResult(null);

      // Automatically analyze the file structure
      analysisMutation.mutate(file);
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
    setAnalysisResult(null);
    onClose();
  };

  const downloadTemplate = () => {
    // Create template matching the exact Excel format from attached data
    const templateData = [
      {
        '会計年月': '202504',
        '在庫区分': '10',
        '事業所コード': '0700',
        '事業所名': '東京支店',
        '部門コード': '0702',
        '部門名': '東京第二',
        '品種コード': '002',
        '品種名': 'メラ人工心肺回路',
        '資産分類コード': '0029',
        '資産分類名': '補助循環回路人工肺付',
        '商品コード': '03200822H0',
        'メラ商品名': '＃　ＳＴ　ＳＯＬＡＳ　２３ＣＳ２Ｐ３　ヘパ',
        '販売名': 'メラエクセライン回路ＨＰ２',
        '商品名': '＃　ＳＴ　ＳＯＬＡＳ　２３ＣＳ２Ｐ３',
        '規格': 'ヘパ',
        'ロット番号': '12511232',
        '有効期限': '2028/03/12',
        '前月末在庫数': '0',
        '前月末移動積送数': '0',
        '前月末出荷積送数': '0',
        '前月末在庫数合計': '0',
        '貸出前月末在庫数': '0',
        '貸出前月末移動積送数': '0',
        '貸出前月末出荷積送数': '0',
        '貸出前月末在庫数合計': '0',
        '前月末総在庫数': '0',
        '仕入数': '0',
        '入庫数': '0',
        '売上数': '0',
        '出庫数': '0',
        '貸出仕入数': '0',
        '貸出入庫数': '1',
        '貸出売上数': '0',
        '貸出出庫数': '0',
        '移動積送入庫数': '0',
        '移動積送出庫数': '0',
        '出荷積送入庫数': '0',
        '出荷積送出庫数': '0',
        '当月末在庫数': '0',
        '当月末移動積送数': '0',
        '当月末出荷積送数': '0',
        '当月末在庫数合計': '0',
        '貸出当月末在庫数': '1',
        '貸出当月末移動積送数': '0',
        '貸出当月末出荷積送数': '0',
        '貸出当月末在庫数合計': '1',
        '当月末総在庫数': '1',
        '諸口フラグ': 'FALSE',
        '旧在庫管理フラグ': '0'
      },
      {
        '会計年月': '202504',
        '在庫区分': '10',
        '事業所コード': '0700',
        '事業所名': '東京支店',
        '部門コード': '0702',
        '部門名': '東京第二',
        '品種コード': '002',
        '品種名': 'メラ人工心肺回路',
        '資産分類コード': '0030',
        '資産分類名': 'IV セット',
        '商品コード': '03200822H1',
        'メラ商品名': 'サンプル商品名',
        '販売名': 'サンプル販売名',
        '商品名': 'サンプル商品',
        '規格': '標準型',
        'ロット番号': '230929',
        '有効期限': '2026/09/28',
        '前月末在庫数': '0',
        '前月末移動積送数': '0',
        '前月末出荷積送数': '0',
        '前月末在庫数合計': '0',
        '貸出前月末在庫数': '0',
        '貸出前月末移動積送数': '0',
        '貸出前月末出荷積送数': '0',
        '貸出前月末在庫数合計': '0',
        '前月末総在庫数': '0',
        '仕入数': '0',
        '入庫数': '2',
        '売上数': '0',
        '出庫数': '2',
        '貸出仕入数': '0',
        '貸出入庫数': '2',
        '貸出売上数': '0',
        '貸出出庫数': '0',
        '移動積送入庫数': '0',
        '移動積送出庫数': '0',
        '出荷積送入庫数': '0',
        '出荷積送出庫数': '0',
        '当月末在庫数': '0',
        '当月末移動積送数': '0',
        '当月末出荷積送数': '0',
        '当月末在庫数合計': '0',
        '貸出当月末在庫数': '2',
        '貸出当月末移動積送数': '0',
        '貸出当月末出荷積送数': '0',
        '貸出当月末在庫数合計': '2',
        '当月末総在庫数': '2',
        '諸口フラグ': 'FALSE',
        '旧在庫管理フラグ': '0'
      }
    ];

    // Exact column order from attached Excel file
    const headers = [
      '会計年月', '在庫区分', '事業所コード', '事業所名', '部門コード', '部門名',
      '品種コード', '品種名', '資産分類コード', '資産分類名', '商品コード', 'メラ商品名',
      '販売名', '商品名', '規格', 'ロット番号', '有効期限', '前月末在庫数',
      '前月末移動積送数', '前月末出荷積送数', '前月末在庫数合計', '貸出前月末在庫数',
      '貸出前月末移動積送数', '貸出前月末出荷積送数', '貸出前月末在庫数合計', '前月末総在庫数',
      '仕入数', '入庫数', '売上数', '出庫数', '貸出仕入数', '貸出入庫数',
      '貸出売上数', '貸出出庫数', '移動積送入庫数', '移動積送出庫数', '出荷積送入庫数',
      '出荷積送出庫数', '当月末在庫数', '当月末移動積送数', '当月末出荷積送数',
      '当月末在庫数合計', '貸出当月末在庫数', '貸出当月末移動積送数', '貸出当月末出荷積送数',
      '貸出当月末在庫数合計', '当月末総在庫数', '諸口フラグ', '旧在庫管理フラグ'
    ];
    
    const csvContent = '\uFEFF' + [
      headers.join(','),
      ...templateData.map(row => headers.map(header => `"${row[header] || ''}"`).join(','))
    ].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const link = document.createElement('a');
    link.href = URL.createObjectURL(blob);
    link.download = '在庫データインポートテンプレート.csv';
    link.click();
    URL.revokeObjectURL(link.href);
  };

  return (
    <Dialog open={isOpen} onOpenChange={handleClose}>
      <DialogContent className="max-w-md w-full">
        <DialogHeader>
          <DialogTitle className="flex items-center">
            <FileSpreadsheet className="mr-2 h-5 w-5" />
            Excelファイルインポート
          </DialogTitle>
          <DialogDescription>
            医療機器データをExcelファイルから一括でインポートできます。テンプレートをダウンロードして正しい形式で入力してください。
          </DialogDescription>
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
            <strong>対応する列名（添付Excelファイルと同じ順番）:</strong>
            <br />
            会計年月, 在庫区分, 事業所コード, 事業所名, 部門コード, 部門名, 品種コード, 品種名, 資産分類コード, 資産分類名, 商品コード, メラ商品名, 販売名, 商品名, 規格, ロット番号, 有効期限, 前月末在庫数, 前月末移動積送数, 前月末出荷積送数, 前月末在庫数合計, 貸出前月末在庫数, 貸出前月末移動積送数, 貸出前月末出荷積送数, 貸出前月末在庫数合計, 前月末総在庫数, 仕入数, 入庫数, 売上数, 出庫数, 貸出仕入数, 貸出入庫数, 貸出売上数, 貸出出庫数, 移動積送入庫数, 移動積送出庫数, 出荷積送入庫数, 出荷積送出庫数, 当月末在庫数, 当月末移動積送数, 当月末出荷積送数, 当月末在庫数合計, 貸出当月末在庫数, 貸出当月末移動積送数, 貸出当月末出荷積送数, 貸出当月末在庫数合計, 当月末総在庫数, 諸口フラグ, 旧在庫管理フラグ
            <br />
            <strong>注意:</strong> 商品コード、メラ商品名、販売名、当月末総在庫数は必須項目です。添付されたExcelファイルと全く同じ項目構成でデータを入力してください。
          </div>
        </div>
      </DialogContent>
    </Dialog>
  );
}