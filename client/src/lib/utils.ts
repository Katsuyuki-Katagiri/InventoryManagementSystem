import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatCurrency(amount: number): string {
  return new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  }).format(amount);
}

export function getStockStatus(quantity: number, lowStockThreshold: number) {
  if (quantity === 0) {
    return { status: "out-of-stock", label: "在庫切れ", color: "destructive" };
  } else if (quantity <= lowStockThreshold) {
    return { status: "low-stock", label: "在庫不足", color: "warning" };
  } else {
    return { status: "in-stock", label: "在庫あり", color: "success" };
  }
}

export function getCategoryColor(category: string): string {
  const colors: Record<string, string> = {
    電子機器: "bg-blue-100 text-blue-800",
    衣類: "bg-purple-100 text-purple-800", 
    書籍: "bg-green-100 text-green-800",
    家庭用品: "bg-yellow-100 text-yellow-800",
    スポーツ: "bg-red-100 text-red-800",
    玩具: "bg-pink-100 text-pink-800",
    美容: "bg-indigo-100 text-indigo-800",
    自動車: "bg-gray-100 text-gray-800"
  };
  return colors[category] || "bg-gray-100 text-gray-800";
}

export function getCategoryIcon(category: string): string {
  const icons: Record<string, string> = {
    electronics: "fas fa-mobile-alt",
    clothing: "fas fa-tshirt",
    books: "fas fa-book",
    home: "fas fa-home",
    sports: "fas fa-basketball-ball",
    toys: "fas fa-gamepad",
    beauty: "fas fa-palette",
    automotive: "fas fa-car"
  };
  return icons[category] || "fas fa-cube";
}
