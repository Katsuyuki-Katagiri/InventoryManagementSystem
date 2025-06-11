import { Card, CardContent } from "@/components/ui/card";
import { formatCurrency } from "@/lib/utils";
import { Box, AlertTriangle, Calendar, TrendingUp, TrendingDown } from "lucide-react";
import { useQuery } from "@tanstack/react-query";

interface StatsCardsProps {
  stats?: {
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  };
  filteredData?: any[];
}

interface InventoryStats {
  totalInventory: number;
  expiringWithinYear: number;
  expiredItems: number;
  previousMonth: {
    totalInventory: number;
    expiringWithinYear: number;
    expiredItems: number;
  };
}

export default function StatsCards({ stats, filteredData = [] }: StatsCardsProps) {
  const { data: inventoryStats } = useQuery<InventoryStats>({
    queryKey: ["/api/inventory/stats"],
  });

  // Calculate filtered statistics from the provided data
  const now = new Date();
  const oneYearFromNow = new Date();
  oneYearFromNow.setFullYear(now.getFullYear() + 1);

  const filteredStats = {
    totalInventory: filteredData.length,
    expiringWithinYear: filteredData.filter(item => {
      if (!item.expiryDate) return false;
      const expiryDate = new Date(item.expiryDate);
      return expiryDate > now && expiryDate <= oneYearFromNow;
    }).length,
    expiredItems: filteredData.filter(item => {
      if (!item.expiryDate) return false;
      const expiryDate = new Date(item.expiryDate);
      return expiryDate <= now;
    }).length
  };

  if (!stats) {
    return (
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
        {[...Array(3)].map((_, i) => (
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

  const getTrendIcon = (current: number, previous: number) => {
    if (current > previous) return <TrendingUp className="h-4 w-4 text-red-500" />;
    if (current < previous) return <TrendingDown className="h-4 w-4 text-green-500" />;
    return null;
  };

  const getTrendText = (current: number, previous: number) => {
    const diff = current - previous;
    if (diff === 0) return "変化なし";
    const sign = diff > 0 ? "+" : "";
    return `${sign}${diff} (先月比)`;
  };

  return (
    <div className="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center">
              <div className="flex-shrink-0">
                <Box className="text-primary text-2xl" />
              </div>
              <div className="ml-4">
                <p className="text-sm font-medium text-slate-600">在庫総数</p>
                <p className="text-2xl font-semibold text-slate-900">{filteredStats.totalInventory}</p>
              </div>
            </div>
            <div className="flex items-center text-sm text-slate-500">
              {inventoryStats && getTrendIcon(filteredStats.totalInventory, inventoryStats.previousMonth.totalInventory)}
              <span className="ml-1">{inventoryStats ? getTrendText(filteredStats.totalInventory, inventoryStats.previousMonth.totalInventory) : "データ読込中"}</span>
            </div>
          </div>
        </CardContent>
      </Card>
      
      <Card>
        <CardContent className="p-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center">
              <div className="flex-shrink-0">
                <Calendar className="text-yellow-500 text-2xl" />
              </div>
              <div className="ml-4">
                <p className="text-sm font-medium text-slate-600">UBD1年未満</p>
                <p className="text-2xl font-semibold text-slate-900">{filteredStats.expiringWithinYear}</p>
              </div>
            </div>
            <div className="flex items-center text-sm text-slate-500">
              {inventoryStats && getTrendIcon(filteredStats.expiringWithinYear, inventoryStats.previousMonth.expiringWithinYear)}
              <span className="ml-1">{inventoryStats ? getTrendText(filteredStats.expiringWithinYear, inventoryStats.previousMonth.expiringWithinYear) : "データ読込中"}</span>
            </div>
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardContent className="p-6">
          <div className="flex items-center justify-between">
            <div className="flex items-center">
              <div className="flex-shrink-0">
                <AlertTriangle className="text-red-500 text-2xl" />
              </div>
              <div className="ml-4">
                <p className="text-sm font-medium text-slate-600">UBD期限切れ</p>
                <p className="text-2xl font-semibold text-slate-900">{filteredStats.expiredItems}</p>
              </div>
            </div>
            <div className="flex items-center text-sm text-slate-500">
              {inventoryStats && getTrendIcon(filteredStats.expiredItems, inventoryStats.previousMonth.expiredItems)}
              <span className="ml-1">{inventoryStats ? getTrendText(filteredStats.expiredItems, inventoryStats.previousMonth.expiredItems) : "データ読込中"}</span>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
