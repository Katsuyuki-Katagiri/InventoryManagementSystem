import XLSX from 'xlsx';

console.log('Rebuilding accurate loan matching from scratch...');

try {
  const workbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Processing ${loanData.length} loan records`);

  // Build accurate matching SQL by department
  const departmentMatches = {};

  loanData.forEach((loan, index) => {
    const deptCode = String(loan['部門コード'] || '').trim();
    const productCode = String(loan['商品コード'] || '').trim();
    const lotNumber = String(loan['ロット番号'] || '').trim();
    const expiryStr = String(loan['有効期限'] || '').trim();
    const shipmentNumber = String(loan['出荷番号'] || '').trim();
    const facilityName = String(loan['施設名'] || '').trim().replace(/'/g, "''");
    const responsiblePerson = String(loan['担当者名'] || '').trim().replace(/'/g, "''");
    const loanDateStr = loan['貸出日'];

    if (!deptCode || !productCode || !lotNumber || !shipmentNumber) return;

    // Parse dates
    let expiryDate = null;
    if (expiryStr && expiryStr !== '') {
      try {
        if (typeof expiryStr === 'number') {
          expiryDate = new Date((Number(expiryStr) - 25569) * 86400 * 1000);
        } else {
          expiryDate = new Date(expiryStr);
        }
        if (isNaN(expiryDate.getTime())) expiryDate = null;
      } catch (e) {
        expiryDate = null;
      }
    }

    let loanDate = null;
    if (loanDateStr) {
      try {
        if (typeof loanDateStr === 'number') {
          loanDate = new Date((Number(loanDateStr) - 25569) * 86400 * 1000);
        } else {
          loanDate = new Date(loanDateStr);
        }
        if (isNaN(loanDate.getTime())) loanDate = null;
      } catch (e) {
        loanDate = null;
      }
    }

    if (!departmentMatches[deptCode]) {
      departmentMatches[deptCode] = [];
    }

    departmentMatches[deptCode].push({
      productCode,
      lotNumber,
      expiryDate: expiryDate ? expiryDate.toISOString().split('T')[0] : null,
      shipmentNumber,
      facilityName,
      responsiblePerson,
      loanDate: loanDate ? loanDate.toISOString().split('T')[0] : null
    });
  });

  console.log('\n=== Department Analysis ===');
  Object.entries(departmentMatches).forEach(([dept, matches]) => {
    console.log(`Department ${dept}: ${matches.length} loan items`);
    const uniquePersons = [...new Set(matches.map(m => m.responsiblePerson))];
    const uniqueFacilities = [...new Set(matches.map(m => m.facilityName))];
    console.log(`  Persons: ${uniquePersons.join(', ')}`);
    console.log(`  Facilities: ${uniqueFacilities.slice(0, 3).join(', ')}${uniqueFacilities.length > 3 ? '...' : ''}`);
  });

  // Generate optimized SQL updates
  let sqlStatements = [];

  Object.entries(departmentMatches).forEach(([deptCode, matches]) => {
    matches.forEach(match => {
      let sql = `
UPDATE inventory SET 
  shipment_number = '${match.shipmentNumber}',
  facility_name = '${match.facilityName}',
  responsible_person = '${match.responsiblePerson}',
  shipment_date = ${match.loanDate ? `'${match.loanDate}'` : 'NULL'}
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '${deptCode}'
    AND p.product_code = '${match.productCode}'
    AND inventory.lot_number = '${match.lotNumber}'`;

      if (match.expiryDate) {
        sql += `\n    AND inventory.expiry_date = '${match.expiryDate}'`;
      } else {
        sql += `\n    AND inventory.expiry_date IS NULL`;
      }

      sql += '\n);';
      sqlStatements.push(sql);
    });
  });

  console.log(`\nGenerated ${sqlStatements.length} SQL update statements`);
  console.log('\nFirst 3 statements:');
  sqlStatements.slice(0, 3).forEach((sql, i) => {
    console.log(`\n--- Statement ${i + 1} ---`);
    console.log(sql);
  });

  import('fs').then(fs => {
    fs.writeFileSync('rebuild-matching.sql', sqlStatements.join('\n\n'));
    console.log('\nSQL statements written to rebuild-matching.sql');
  });

} catch (error) {
  console.error('Error:', error);
}