import XLSX from 'xlsx';

const filePath = './attached_assets/貸出一覧（25-04）_1749634099925.xlsx';

try {
  console.log('Processing loan data...');
  const workbook = XLSX.readFile(filePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const data = XLSX.utils.sheet_to_json(worksheet);

  // Extract unique facility and responsible person combinations
  const uniqueCombinations = new Map();
  
  data.forEach((row, index) => {
    const shipmentNumber = row['出荷番号'];
    const facilityName = row['施設名'];
    const responsiblePerson = row['担当者名'];
    
    if (shipmentNumber && facilityName && responsiblePerson) {
      const key = shipmentNumber.substring(0, 10); // First 10 chars as key
      if (!uniqueCombinations.has(key)) {
        uniqueCombinations.set(key, {
          facilityName,
          responsiblePerson,
          count: 1
        });
      } else {
        uniqueCombinations.get(key).count++;
      }
    }
  });

  console.log('\nUnique combinations found:');
  for (const [key, value] of uniqueCombinations) {
    console.log(`${key}: ${value.facilityName} - ${value.responsiblePerson} (${value.count} records)`);
  }

  // Generate SQL for updating
  console.log('\n\nSQL UPDATE statements:');
  let sqlParts = [];
  
  for (const [key, value] of uniqueCombinations) {
    sqlParts.push(`    WHEN shipment_number LIKE '${key}%' THEN '${value.facilityName}'`);
  }
  
  console.log('UPDATE inventory SET');
  console.log('  facility_name = CASE');
  console.log(sqlParts.join('\n'));
  console.log('    ELSE NULL');
  console.log('  END,');
  
  sqlParts = [];
  for (const [key, value] of uniqueCombinations) {
    sqlParts.push(`    WHEN shipment_number LIKE '${key}%' THEN '${value.responsiblePerson}'`);
  }
  
  console.log('  responsible_person = CASE');
  console.log(sqlParts.join('\n'));
  console.log('    ELSE NULL');
  console.log('  END');
  console.log('WHERE shipment_date IS NOT NULL;');

} catch (error) {
  console.error('Error:', error);
}