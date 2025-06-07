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
    return { status: "out-of-stock", label: "Out of Stock", color: "destructive" };
  } else if (quantity <= lowStockThreshold) {
    return { status: "low-stock", label: "Low Stock", color: "warning" };
  } else {
    return { status: "in-stock", label: "In Stock", color: "success" };
  }
}

export function getCategoryColor(category: string): string {
  const colors: Record<string, string> = {
    electronics: "bg-blue-100 text-blue-800",
    clothing: "bg-purple-100 text-purple-800", 
    books: "bg-green-100 text-green-800",
    home: "bg-yellow-100 text-yellow-800",
    sports: "bg-red-100 text-red-800",
    toys: "bg-pink-100 text-pink-800",
    beauty: "bg-indigo-100 text-indigo-800",
    automotive: "bg-gray-100 text-gray-800"
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
