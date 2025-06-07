import { useState } from "react";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Calendar, ChevronLeft, ChevronRight } from "lucide-react";

interface MonthlySelectorProps {
  selectedMonth: string;
  onMonthChange: (month: string) => void;
  className?: string;
}

export default function MonthlySelector({
  selectedMonth,
  onMonthChange,
  className = ""
}: MonthlySelectorProps) {
  // Generate months for the last 24 months and next 12 months
  const generateMonths = () => {
    const months = [];
    const currentDate = new Date();
    
    // Go back 24 months from current date
    for (let i = 24; i >= -12; i--) {
      const date = new Date(currentDate.getFullYear(), currentDate.getMonth() - i, 1);
      const yearMonth = `${date.getFullYear()}-${String(date.getMonth() + 1).padStart(2, '0')}`;
      const displayName = `${date.getFullYear()}年${date.getMonth() + 1}月`;
      months.push({ value: yearMonth, label: displayName });
    }
    
    return months;
  };

  const months = generateMonths();
  const currentIndex = months.findIndex(m => m.value === selectedMonth);

  const handlePrevMonth = () => {
    if (currentIndex > 0) {
      onMonthChange(months[currentIndex - 1].value);
    }
  };

  const handleNextMonth = () => {
    if (currentIndex < months.length - 1) {
      onMonthChange(months[currentIndex + 1].value);
    }
  };

  const getCurrentMonthLabel = () => {
    const month = months.find(m => m.value === selectedMonth);
    return month ? month.label : "月を選択";
  };

  return (
    <Card className={className}>
      <CardHeader className="pb-3">
        <CardTitle className="flex items-center space-x-2 text-base">
          <Calendar className="h-4 w-4" />
          <span>在庫棚卸月選択</span>
        </CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        {/* Navigation Controls */}
        <div className="flex items-center justify-between">
          <Button
            variant="outline"
            size="sm"
            onClick={handlePrevMonth}
            disabled={currentIndex <= 0}
          >
            <ChevronLeft className="h-4 w-4" />
            前月
          </Button>
          
          <div className="text-lg font-medium text-center min-w-32">
            {getCurrentMonthLabel()}
          </div>
          
          <Button
            variant="outline"
            size="sm"
            onClick={handleNextMonth}
            disabled={currentIndex >= months.length - 1}
          >
            次月
            <ChevronRight className="h-4 w-4" />
          </Button>
        </div>

        {/* Dropdown Selector */}
        <div>
          <Select value={selectedMonth} onValueChange={onMonthChange}>
            <SelectTrigger>
              <SelectValue placeholder="月を選択してください" />
            </SelectTrigger>
            <SelectContent className="max-h-60">
              {months.map((month) => (
                <SelectItem key={month.value} value={month.value}>
                  {month.label}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        {/* Quick Access */}
        <div className="grid grid-cols-2 gap-2">
          <Button
            variant="ghost"
            size="sm"
            onClick={() => {
              const now = new Date();
              const currentMonth = `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, '0')}`;
              onMonthChange(currentMonth);
            }}
            className="text-xs"
            type="button"
          >
            今月
          </Button>
          <Button
            variant="ghost"
            size="sm"
            onClick={() => {
              const lastMonth = new Date();
              lastMonth.setMonth(lastMonth.getMonth() - 1);
              const prevMonth = `${lastMonth.getFullYear()}-${String(lastMonth.getMonth() + 1).padStart(2, '0')}`;
              onMonthChange(prevMonth);
            }}
            className="text-xs"
            type="button"
          >
            前月
          </Button>
        </div>

        {/* Info */}
        <div className="text-xs text-gray-500 text-center">
          月毎の在庫棚卸データを管理します
        </div>
      </CardContent>
    </Card>
  );
}