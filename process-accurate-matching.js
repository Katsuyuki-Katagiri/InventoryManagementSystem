import XLSX from 'xlsx';

const loanFilePath = './attached_assets/貸出一覧（25-04）_1749634099925.xlsx';

console.log('Analyzing loan data for accurate matching SQL generation...');

try {
  const workbook = XLSX.readFile(loanFilePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Processing ${loanData.length} loan records`);

  // Group by department code for verification
  const departmentGroups = {};
  const sqlStatements = [];

  loanData.forEach((loan, index) => {
    const departmentCode = String(loan['部門コード'] || '').trim();
    const productCode = String(loan['商品コード'] || '').trim();
    const lotNumber = String(loan['ロット番号'] || '').trim();
    const expiryDateStr = String(loan['有効期限'] || '').trim();
    const shipmentNumber = String(loan['出荷番号'] || '').trim();
    const facilityName = String(loan['施設名'] || '').trim().replace(/'/g, "''");
    const responsiblePerson = String(loan['担当者名'] || '').trim().replace(/'/g, "''");
    const loanDateStr = loan['貸出日'];

    if (!departmentCode || !productCode || !lotNumber) {
      return;
    }

    // Count by department for verification
    if (!departmentGroups[departmentCode]) {
      departmentGroups[departmentCode] = 0;
    }
    departmentGroups[departmentCode]++;

    // Parse loan date
    let loanDate = null;
    if (loanDateStr) {
      try {
        if (typeof loanDateStr === 'number') {
          // Excel serial date
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

    // Parse expiry date for accurate matching
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

    // Generate SQL for accurate matching
    let sql = `
UPDATE inventory SET 
  shipment_number = '${shipmentNumber}',
  facility_name = '${facilityName}',
  responsible_person = '${responsiblePerson}',
  shipment_date = ${loanDate ? `'${loanDate.toISOString().split('T')[0]}'` : 'NULL'}
WHERE id IN (
  SELECT i.id 
  FROM inventory i
  JOIN products p ON i.product_id = p.id
  JOIN departments d ON i.department_id = d.id
  WHERE d.department_code = '${departmentCode}'
    AND p.product_code = '${productCode}'
    AND i.lot_number = '${lotNumber}'`;

    if (expiryDate) {
      sql += `\n    AND i.expiry_date = '${expiryDate.toISOString().split('T')[0]}'`;
    } else {
      sql += `\n    AND i.expiry_date IS NULL`;
    }
    
    sql += '\n);';
    
    sqlStatements.push(sql);
  });

  console.log('\n=== Department Distribution ===');
  Object.entries(departmentGroups).forEach(([dept, count]) => {
    console.log(`Department ${dept}: ${count} loan records`);
  });

  console.log(`\n=== Generated ${sqlStatements.length} SQL statements ===`);
  console.log('First 3 SQL statements:');
  sqlStatements.slice(0, 3).forEach((sql, index) => {
    console.log(`\n--- Statement ${index + 1} ---`);
    console.log(sql);
  });

  // Write all SQL statements to a file for execution
  import('fs').then(fs => {
    fs.writeFileSync('loan-matching-statements.sql', sqlStatements.join('\n\n'));
    console.log('\nAll SQL statements written to loan-matching-statements.sql');
  });

} catch (error) {
  console.error('Error:', error);
}