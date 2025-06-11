import { Card, CardContent } from "@/components/ui/card";
import { Box, AlertTriangle, Calendar } from "lucide-react";

interface StatsCardsProps {
  stats?: {
    totalProducts: number;
    lowStockItems: number;
    totalValue: number;
    categories: number;
  };
  filteredData?: any[];
}

export default function StatsCards({ stats, filteredData = [] }: StatsCardsProps) {
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

  return (
    <div className="flex gap-4 mb-8">
      <Card className="flex-1">
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <Box className="text-primary text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">在庫総数</p>
              <p className="text-2xl font-semibold text-slate-900">{filteredStats.totalInventory}</p>
            </div>
          </div>
        </CardContent>
      </Card>
      
      <Card className="flex-1">
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <Calendar className="text-yellow-500 text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">UBD1年未満</p>
              <p className="text-2xl font-semibold text-slate-900">{filteredStats.expiringWithinYear}</p>
            </div>
          </div>
        </CardContent>
      </Card>

      <Card className="flex-1">
        <CardContent className="p-6">
          <div className="flex items-center">
            <div className="flex-shrink-0">
              <AlertTriangle className="text-red-500 text-2xl" />
            </div>
            <div className="ml-4">
              <p className="text-sm font-medium text-slate-600">UBD期限切れ</p>
              <p className="text-2xl font-semibold text-slate-900">{filteredStats.expiredItems}</p>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
