import { useState } from "react";
import { useQuery } from "@tanstack/react-query";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { Label } from "@/components/ui/label";
import { Building2, Building } from "lucide-react";
import { type Department, type Facility } from "@shared/schema";

interface DepartmentSelectorProps {
  selectedFacilityId?: number;
  selectedDepartmentId?: number;
  onFacilityChange?: (facilityId: number) => void;
  onDepartmentChange?: (departmentId: number) => void;
  showFacilitySelector?: boolean;
  className?: string;
}

export default function DepartmentSelector({
  selectedFacilityId,
  selectedDepartmentId,
  onFacilityChange,
  onDepartmentChange,
  showFacilitySelector = true,
  className = ""
}: DepartmentSelectorProps) {
  const [currentFacilityId, setCurrentFacilityId] = useState<number | undefined>(selectedFacilityId);

  // Fetch facilities
  const { data: facilities = [], isLoading: facilitiesLoading } = useQuery<Facility[]>({
    queryKey: ['/api/facilities'],
    enabled: showFacilitySelector,
  });

  // Fetch departments for selected facility
  const { data: departments = [], isLoading: departmentsLoading } = useQuery<Department[]>({
    queryKey: ['/api/departments'],
    enabled: !currentFacilityId,
  });

  // Fetch departments by facility
  const { data: facilityDepartments = [], isLoading: facilityDepartmentsLoading } = useQuery<Department[]>({
    queryKey: ['/api/facilities', currentFacilityId, 'departments'],
    enabled: !!currentFacilityId,
  });

  const handleFacilityChange = (value: string) => {
    const facilityId = parseInt(value);
    setCurrentFacilityId(facilityId);
    onFacilityChange?.(facilityId);
    // Reset department selection when facility changes
    onDepartmentChange?.(0);
  };

  const handleDepartmentChange = (value: string) => {
    const departmentId = parseInt(value);
    onDepartmentChange?.(departmentId);
  };

  const availableDepartments = currentFacilityId ? facilityDepartments : departments;
  const departmentsIsLoading = currentFacilityId ? facilityDepartmentsLoading : departmentsLoading;

  return (
    <div className={`space-y-4 ${className}`}>
      {showFacilitySelector && (
        <div>
          <Label htmlFor="facility-select" className="text-sm font-medium">
            施設選択
          </Label>
          <Select 
            value={currentFacilityId?.toString() || ""} 
            onValueChange={handleFacilityChange}
          >
            <SelectTrigger className="w-full mt-1">
              <div className="flex items-center space-x-2">
                <Building2 className="h-4 w-4 text-gray-500" />
                <SelectValue placeholder="施設を選択してください" />
              </div>
            </SelectTrigger>
            <SelectContent>
              {facilitiesLoading ? (
                <SelectItem value="loading" disabled>
                  読み込み中...
                </SelectItem>
              ) : facilities.length === 0 ? (
                <SelectItem value="empty" disabled>
                  施設が見つかりません
                </SelectItem>
              ) : (
                facilities.map((facility) => (
                  <SelectItem key={facility.id} value={facility.id.toString()}>
                    <div className="flex items-center space-x-2">
                      <span className="text-xs text-gray-500">{facility.facilityCode}</span>
                      <span>{facility.facilityName}</span>
                    </div>
                  </SelectItem>
                ))
              )}
            </SelectContent>
          </Select>
        </div>
      )}

      <div>
        <Label htmlFor="department-select" className="text-sm font-medium">
          部門選択
        </Label>
        <Select 
          value={selectedDepartmentId?.toString() || ""} 
          onValueChange={handleDepartmentChange}
          disabled={showFacilitySelector && !currentFacilityId}
        >
          <SelectTrigger className="w-full mt-1">
            <div className="flex items-center space-x-2">
              <Building className="h-4 w-4 text-gray-500" />
              <SelectValue placeholder="部門を選択してください" />
            </div>
          </SelectTrigger>
          <SelectContent>
            {departmentsIsLoading ? (
              <SelectItem value="loading" disabled>
                読み込み中...
              </SelectItem>
            ) : availableDepartments.length === 0 ? (
              <SelectItem value="empty" disabled>
                {showFacilitySelector && !currentFacilityId 
                  ? "まず施設を選択してください" 
                  : "部門が見つかりません"
                }
              </SelectItem>
            ) : (
              availableDepartments.map((department) => (
                <SelectItem key={department.id} value={department.id.toString()}>
                  <div className="flex items-center space-x-2">
                    <span className="text-xs text-gray-500">{department.departmentCode}</span>
                    <span>{department.departmentName}</span>
                  </div>
                </SelectItem>
              ))
            )}
          </SelectContent>
        </Select>
        {showFacilitySelector && !currentFacilityId && (
          <p className="text-xs text-gray-500 mt-1">
            部門を選択するには、まず施設を選択してください
          </p>
        )}
      </div>
    </div>
  );
}