import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { useToast } from "@/hooks/use-toast";
import { apiRequest } from "@/lib/queryClient";
import { type Department, type Facility } from "@shared/schema";
import { Building2, Building, Plus, Edit2, Search } from "lucide-react";

export default function DepartmentsPage() {
  const { toast } = useToast();
  const queryClient = useQueryClient();
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedFacility, setSelectedFacility] = useState<string>("");
  const [showAddModal, setShowAddModal] = useState(false);

  // Fetch departments
  const { data: departments = [], isLoading: departmentsLoading } = useQuery<Department[]>({
    queryKey: ['/api/departments'],
  });

  // Fetch facilities
  const { data: facilities = [] } = useQuery<Facility[]>({
    queryKey: ['/api/facilities'],
  });

  // Filter departments
  const filteredDepartments = departments.filter(dept => {
    const matchesSearch = dept.departmentName.toLowerCase().includes(searchQuery.toLowerCase()) ||
                         dept.departmentCode.toLowerCase().includes(searchQuery.toLowerCase());
    const matchesFacility = !selectedFacility || selectedFacility === "all" || dept.facilityId.toString() === selectedFacility;
    return matchesSearch && matchesFacility;
  });

  // Get facility name by ID
  const getFacilityName = (facilityId: number) => {
    const facility = facilities.find(f => f.id === facilityId);
    return facility ? facility.facilityName : "不明な施設";
  };

  return (
    <div className="min-h-screen bg-gray-50 p-6">
      <div className="max-w-7xl mx-auto space-y-6">
        {/* Header */}
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-3xl font-bold text-gray-900">部門管理</h1>
            <p className="text-gray-600 mt-1">医療機器の部門別管理</p>
          </div>
          <Button onClick={() => setShowAddModal(true)} className="flex items-center space-x-2">
            <Plus className="h-4 w-4" />
            <span>新規部門追加</span>
          </Button>
        </div>

        {/* Stats Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">総部門数</CardTitle>
              <Building className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{departments.length}</div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">施設数</CardTitle>
              <Building2 className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{facilities.length}</div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">アクティブ部門</CardTitle>
              <Building className="h-4 w-4 text-muted-foreground" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">
                {departments.filter(d => d.isActive === 1).length}
              </div>
            </CardContent>
          </Card>
        </div>

        {/* Filters */}
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center space-x-2">
              <Search className="h-5 w-5" />
              <span>部門検索・フィルター</span>
            </CardTitle>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <Label htmlFor="search">部門名・コードで検索</Label>
                <Input
                  id="search"
                  placeholder="部門名または部門コードを入力..."
                  value={searchQuery}
                  onChange={(e) => setSearchQuery(e.target.value)}
                  className="mt-1"
                />
              </div>
              <div>
                <Label htmlFor="facility-filter">施設でフィルター</Label>
                <Select value={selectedFacility} onValueChange={setSelectedFacility}>
                  <SelectTrigger className="mt-1">
                    <SelectValue placeholder="すべての施設" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="all">すべての施設</SelectItem>
                    {facilities.map((facility) => (
                      <SelectItem key={facility.id} value={facility.id.toString()}>
                        {facility.facilityName}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Departments Table */}
        <Card>
          <CardHeader>
            <CardTitle>部門一覧</CardTitle>
          </CardHeader>
          <CardContent>
            {departmentsLoading ? (
              <div className="text-center py-8">
                <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 mx-auto"></div>
                <p className="text-gray-500 mt-2">読み込み中...</p>
              </div>
            ) : filteredDepartments.length === 0 ? (
              <div className="text-center py-8">
                <Building className="h-12 w-12 text-gray-400 mx-auto mb-4" />
                <p className="text-gray-500">
                  {searchQuery || selectedFacility ? "条件に一致する部門が見つかりません" : "部門が登録されていません"}
                </p>
              </div>
            ) : (
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>部門コード</TableHead>
                    <TableHead>部門名</TableHead>
                    <TableHead>所属施設</TableHead>
                    <TableHead>ステータス</TableHead>
                    <TableHead>操作</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {filteredDepartments.map((department) => (
                    <TableRow key={department.id}>
                      <TableCell className="font-mono text-sm">
                        {department.departmentCode}
                      </TableCell>
                      <TableCell className="font-medium">
                        {department.departmentName}
                      </TableCell>
                      <TableCell>
                        <div className="flex items-center space-x-2">
                          <Building2 className="h-4 w-4 text-gray-500" />
                          <span>{getFacilityName(department.facilityId)}</span>
                        </div>
                      </TableCell>
                      <TableCell>
                        <Badge variant={department.isActive === 1 ? "default" : "secondary"}>
                          {department.isActive === 1 ? "アクティブ" : "非アクティブ"}
                        </Badge>
                      </TableCell>
                      <TableCell>
                        <Button variant="ghost" size="sm">
                          <Edit2 className="h-4 w-4" />
                        </Button>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </CardContent>
        </Card>
      </div>

      {/* Add Department Modal - Basic structure */}
      <Dialog open={showAddModal} onOpenChange={setShowAddModal}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>新規部門追加</DialogTitle>
          </DialogHeader>
          <div className="space-y-4">
            <p className="text-sm text-gray-600">部門管理機能は実装中です。</p>
            <Button onClick={() => setShowAddModal(false)}>閉じる</Button>
          </div>
        </DialogContent>
      </Dialog>
    </div>
  );
}