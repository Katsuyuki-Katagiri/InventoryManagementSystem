import XLSX from 'xlsx';

const loanFilePath = './attached_assets/貸出一覧（25-04）_1749634099925.xlsx';

console.log('Analyzing loan vs inventory data for final accurate matching...');

try {
  const workbook = XLSX.readFile(loanFilePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  // Process loan data and extract key matching criteria
  const matchingCriteria = [];
  const departmentGroups = {};

  loanData.forEach((loan, index) => {
    const departmentCode = String(loan['部門コード'] || '').trim();
    const productCode = String(loan['商品コード'] || '').trim();
    const lotNumber = String(loan['ロット番号'] || '').trim();
    const expiryDateStr = String(loan['有効期限'] || '').trim();
    const shipmentNumber = String(loan['出荷番号'] || '').trim();
    const facilityName = String(loan['施設名'] || '').trim();
    const responsiblePerson = String(loan['担当者名'] || '').trim();
    const loanDateStr = loan['貸出日'];

    if (!departmentCode || !productCode || !lotNumber) {
      return;
    }

    // Parse expiry date
    let expiryDate = null;
    if (expiryDateStr && expiryDateStr !== '') {
      try {
        if (typeof expiryDateStr === 'number') {
          expiryDate = new Date((Number(expiryDateStr) - 25569) * 86400 * 1000);
        } else {
          expiryDate = new Date(expiryDateStr);
        }
        if (isNaN(expiryDate.getTime())) {
          expiryDate = null;
        }
      } catch (e) {
        expiryDate = null;
      }
    }

    // Parse loan date
    let loanDate = null;
    if (loanDateStr) {
      try {
        if (typeof loanDateStr === 'number') {
          loanDate = new Date((Number(loanDateStr) - 25569) * 86400 * 1000);
        } else {
          loanDate = new Date(loanDateStr);
        }
        if (isNaN(loanDate.getTime())) {
          loanDate = null;
        }
      } catch (e) {
        loanDate = null;
      }
    }

    const criteria = {
      departmentCode,
      productCode,
      lotNumber,
      expiryDate: expiryDate ? expiryDate.toISOString().split('T')[0] : null,
      shipmentNumber,
      facilityName: facilityName.replace(/'/g, "''"),
      responsiblePerson: responsiblePerson.replace(/'/g, "''"),
      loanDate: loanDate ? loanDate.toISOString().split('T')[0] : null
    };

    matchingCriteria.push(criteria);

    // Group by department
    if (!departmentGroups[departmentCode]) {
      departmentGroups[departmentCode] = [];
    }
    departmentGroups[departmentCode].push(criteria);
  });

  console.log('\n=== LOAN DATA ANALYSIS ===');
  console.log(`Total valid loan records: ${matchingCriteria.length}`);
  
  Object.entries(departmentGroups).forEach(([dept, records]) => {
    console.log(`Department ${dept}: ${records.length} loan records`);
    
    // Show unique product codes for this department
    const uniqueProducts = [...new Set(records.map(r => r.productCode))];
    console.log(`  - Unique products: ${uniqueProducts.slice(0, 5).join(', ')}${uniqueProducts.length > 5 ? '...' : ''}`);
    
    // Show unique lot numbers for this department
    const uniqueLots = [...new Set(records.map(r => r.lotNumber))];
    console.log(`  - Unique lots: ${uniqueLots.slice(0, 5).join(', ')}${uniqueLots.length > 5 ? '...' : ''}`);
    
    // Show unique responsible persons for this department
    const uniquePersons = [...new Set(records.map(r => r.responsiblePerson))];
    console.log(`  - Responsible persons: ${uniquePersons.join(', ')}`);
    
    // Show unique facilities for this department
    const uniqueFacilities = [...new Set(records.map(r => r.facilityName))];
    console.log(`  - Facilities: ${uniqueFacilities.join(', ')}`);
  });

  // Generate comprehensive SQL for accurate matching
  console.log('\n=== GENERATING COMPREHENSIVE SQL ===');
  
  let sql = `-- Comprehensive accurate matching based on department + product + lot + expiry\n`;
  
  Object.entries(departmentGroups).forEach(([deptCode, records]) => {
    if (records.length === 0) return;
    
    sql += `\n-- Department ${deptCode} accurate matching\n`;
    sql += `UPDATE inventory SET\n`;
    sql += `  shipment_number = CASE\n`;
    
    records.forEach((record, index) => {
      sql += `    WHEN EXISTS (\n`;
      sql += `      SELECT 1 FROM products p, departments d\n`;
      sql += `      WHERE p.id = inventory.product_id AND d.id = inventory.department_id\n`;
      sql += `        AND d.department_code = '${deptCode}'\n`;
      sql += `        AND p.product_code = '${record.productCode}'\n`;
      sql += `        AND inventory.lot_number = '${record.lotNumber}'\n`;
      
      if (record.expiryDate) {
        sql += `        AND inventory.expiry_date = '${record.expiryDate}'\n`;
      } else {
        sql += `        AND inventory.expiry_date IS NULL\n`;
      }
      
      sql += `    ) THEN '${record.shipmentNumber}'\n`;
    });
    
    sql += `    ELSE shipment_number\n`;
    sql += `  END,\n`;
    sql += `  facility_name = CASE\n`;
    
    records.forEach((record, index) => {
      sql += `    WHEN EXISTS (\n`;
      sql += `      SELECT 1 FROM products p, departments d\n`;
      sql += `      WHERE p.id = inventory.product_id AND d.id = inventory.department_id\n`;
      sql += `        AND d.department_code = '${deptCode}'\n`;
      sql += `        AND p.product_code = '${record.productCode}'\n`;
      sql += `        AND inventory.lot_number = '${record.lotNumber}'\n`;
      
      if (record.expiryDate) {
        sql += `        AND inventory.expiry_date = '${record.expiryDate}'\n`;
      } else {
        sql += `        AND inventory.expiry_date IS NULL\n`;
      }
      
      sql += `    ) THEN '${record.facilityName}'\n`;
    });
    
    sql += `    ELSE facility_name\n`;
    sql += `  END,\n`;
    sql += `  responsible_person = CASE\n`;
    
    records.forEach((record, index) => {
      sql += `    WHEN EXISTS (\n`;
      sql += `      SELECT 1 FROM products p, departments d\n`;
      sql += `      WHERE p.id = inventory.product_id AND d.id = inventory.department_id\n`;
      sql += `        AND d.department_code = '${deptCode}'\n`;
      sql += `        AND p.product_code = '${record.productCode}'\n`;
      sql += `        AND inventory.lot_number = '${record.lotNumber}'\n`;
      
      if (record.expiryDate) {
        sql += `        AND inventory.expiry_date = '${record.expiryDate}'\n`;
      } else {
        sql += `        AND inventory.expiry_date IS NULL\n`;
      }
      
      sql += `    ) THEN '${record.responsiblePerson}'\n`;
    });
    
    sql += `    ELSE responsible_person\n`;
    sql += `  END,\n`;
    sql += `  shipment_date = CASE\n`;
    
    records.forEach((record, index) => {
      sql += `    WHEN EXISTS (\n`;
      sql += `      SELECT 1 FROM products p, departments d\n`;
      sql += `      WHERE p.id = inventory.product_id AND d.id = inventory.department_id\n`;
      sql += `        AND d.department_code = '${deptCode}'\n`;
      sql += `        AND p.product_code = '${record.productCode}'\n`;
      sql += `        AND inventory.lot_number = '${record.lotNumber}'\n`;
      
      if (record.expiryDate) {
        sql += `        AND inventory.expiry_date = '${record.expiryDate}'\n`;
      } else {
        sql += `        AND inventory.expiry_date IS NULL\n`;
      }
      
      sql += `    ) THEN ${record.loanDate ? `'${record.loanDate}'` : 'NULL'}\n`;
    });
    
    sql += `    ELSE shipment_date\n`;
    sql += `  END\n`;
    sql += `WHERE id IN (\n`;
    sql += `  SELECT i.id FROM inventory i\n`;
    sql += `  JOIN products p ON i.product_id = p.id\n`;
    sql += `  JOIN departments d ON i.department_id = d.id\n`;
    sql += `  WHERE d.department_code = '${deptCode}'\n`;
    sql += `);\n\n`;
  });

  console.log('SQL Generated successfully');
  console.log('First 50 lines:');
  console.log(sql.split('\n').slice(0, 50).join('\n'));

  import('fs').then(fs => {
    fs.writeFileSync('comprehensive-loan-matching.sql', sql);
    console.log('\nComprehensive SQL written to comprehensive-loan-matching.sql');
  });

} catch (error) {
  console.error('Error:', error);
}