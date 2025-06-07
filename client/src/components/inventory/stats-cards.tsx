import { Card, CardContent } from "@/components/ui/card";
import { formatCurrency } from "@/lib/utils";
import { Box, AlertTriangle, DollarSign, Tags } from "lucide-react";

interface StatsCardsProps {
  stats?: {
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  };
}

export default function StatsCards({ stats }: StatsCardsProps) {
  if (!stats) {
    return (
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
        {[...Array(4)].map((_, i) => (
          <Card key={i} className="animate-pulse">
            <CardContent className="p-6">
              <div className="flex items-center">
                <div className="w-8 h-8 bg-gray-200 rounded"></div>
                <div className="ml-4 space-y-2">
                  <div className="h-4 bg-gray-200 rounded w-20"></div>
                  <div className="h-6 bg-gray-200 rounded w-16"></div>
                </div>
              </div>
            </CardContent>
          </Card>
        ))}
      </div>
    );
  }

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 mb-8">
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <Box className="text-primary text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">総商品数</p>
              <p className="text-2xl font-semibold text-slate-900">{stats.totalProducts}</p>
            </div>
          </div>
        </CardContent>
      </Card>
      
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <AlertTriangle className="text-warning text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">在庫不足商品</p>
              <p className="text-2xl font-semibold text-warning">{stats.lowStockItems}</p>
            </div>
          </div>
        </CardContent>
      </Card>
      
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <DollarSign className="text-success text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">総在庫価値</p>
              <p className="text-2xl font-semibold text-slate-900">
                ¥{Math.round(stats.totalValue).toLocaleString()}
              </p>
            </div>
          </div>
        </CardContent>
      </Card>
      
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <Tags className="text-secondary text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">カテゴリー数</p>
              <p className="text-2xl font-semibold text-slate-900">{stats.categories}</p>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
