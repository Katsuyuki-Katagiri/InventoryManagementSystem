import XLSX from 'xlsx';

console.log('Analyzing complete loan vs inventory matching...');

try {
  // Read loan data
  const workbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Processing ${loanData.length} loan records for complete matching`);

  // Build comprehensive matching criteria
  const matchingCriteria = [];
  const departmentStats = {};

  loanData.forEach((loan, index) => {
    const deptCode = String(loan['部門コード'] || '').trim();
    const productCode = String(loan['商品コード'] || '').trim();
    const lotNumber = String(loan['ロット番号'] || '').trim();
    const expiryStr = String(loan['有効期限'] || '').trim();
    const shipmentNumber = String(loan['出荷番号'] || '').trim();
    const facilityName = String(loan['施設名'] || '').trim();
    const responsiblePerson = String(loan['担当者名'] || '').trim();
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

    if (!departmentStats[deptCode]) {
      departmentStats[deptCode] = {
        total: 0,
        uniqueProducts: new Set(),
        uniqueLots: new Set(),
        uniquePersons: new Set(),
        uniqueFacilities: new Set()
      };
    }

    departmentStats[deptCode].total++;
    departmentStats[deptCode].uniqueProducts.add(productCode);
    departmentStats[deptCode].uniqueLots.add(lotNumber);
    departmentStats[deptCode].uniquePersons.add(responsiblePerson);
    departmentStats[deptCode].uniqueFacilities.add(facilityName);

    matchingCriteria.push({
      deptCode,
      productCode,
      lotNumber,
      expiryDate: expiryDate ? expiryDate.toISOString().split('T')[0] : null,
      shipmentNumber,
      facilityName: facilityName.replace(/'/g, "''"),
      responsiblePerson: responsiblePerson.replace(/'/g, "''"),
      loanDate: loanDate ? loanDate.toISOString().split('T')[0] : null
    });
  });

  console.log('\n=== COMPLETE LOAN DATA ANALYSIS ===');
  Object.entries(departmentStats).forEach(([dept, stats]) => {
    console.log(`\nDepartment ${dept}:`);
    console.log(`  Total loan records: ${stats.total}`);
    console.log(`  Unique products: ${stats.uniqueProducts.size}`);
    console.log(`  Unique lots: ${stats.uniqueLots.size}`);
    console.log(`  Responsible persons: ${Array.from(stats.uniquePersons).join(', ')}`);
    console.log(`  Top facilities: ${Array.from(stats.uniqueFacilities).slice(0, 5).join(', ')}`);
  });

  // Generate flexible matching SQL that doesn't require exact expiry date match
  let sqlStatements = [];

  matchingCriteria.forEach((match, index) => {
    // Primary match: department + product + lot + expiry
    let sql1 = `
UPDATE inventory SET 
  shipment_number = '${match.shipmentNumber}',
  facility_name = '${match.facilityName}',
  responsible_person = '${match.responsiblePerson}',
  shipment_date = ${match.loanDate ? `'${match.loanDate}'` : 'NULL'}
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '${match.deptCode}'
    AND p.product_code = '${match.productCode}'
    AND inventory.lot_number = '${match.lotNumber}'`;

    if (match.expiryDate) {
      sql1 += `\n    AND inventory.expiry_date = '${match.expiryDate}'`;
    } else {
      sql1 += `\n    AND inventory.expiry_date IS NULL`;
    }
    sql1 += '\n    AND inventory.shipment_number IS NULL\n);';

    // Fallback match: department + product + lot (without expiry requirement)
    let sql2 = `
UPDATE inventory SET 
  shipment_number = '${match.shipmentNumber}',
  facility_name = '${match.facilityName}',
  responsible_person = '${match.responsiblePerson}',
  shipment_date = ${match.loanDate ? `'${match.loanDate}'` : 'NULL'}
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '${match.deptCode}'
    AND p.product_code = '${match.productCode}'
    AND inventory.lot_number = '${match.lotNumber}'
    AND inventory.shipment_number IS NULL
);`;

    sqlStatements.push(sql1);
    sqlStatements.push(sql2);
  });

  console.log(`\nGenerated ${sqlStatements.length} SQL statements (${matchingCriteria.length} primary + ${matchingCriteria.length} fallback)`);

  // Write to file
  import('fs').then(fs => {
    fs.writeFileSync('complete-matching.sql', sqlStatements.join('\n\n'));
    console.log('\nComplete matching SQL written to complete-matching.sql');
    
    // Also create a summary
    let summary = '-- COMPLETE LOAN MATCHING SUMMARY\n';
    summary += `-- Total loan records: ${matchingCriteria.length}\n`;
    Object.entries(departmentStats).forEach(([dept, stats]) => {
      summary += `-- Department ${dept}: ${stats.total} records, ${stats.uniquePersons.size} persons\n`;
    });
    summary += '\n' + sqlStatements.join('\n\n');
    
    fs.writeFileSync('complete-matching-with-summary.sql', summary);
    console.log('Complete matching with summary written to complete-matching-with-summary.sql');
  });

} catch (error) {
  console.error('Error:', error);
}