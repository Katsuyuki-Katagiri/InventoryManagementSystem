import XLSX from 'xlsx';

console.log('=== Excel貸出一覧データの完全構造分析 ===\n');

try {
  // 貸出一覧データの詳細分析
  const loanWorkbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  console.log(`シート名: ${loanWorkbook.SheetNames.join(', ')}`);
  
  const loanWorksheet = loanWorkbook.Sheets[loanWorkbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(loanWorksheet);
  
  console.log(`貸出データ総件数: ${loanData.length}件\n`);
  
  // 全ての列名を表示
  const allColumns = loanData.length > 0 ? Object.keys(loanData[0]) : [];
  console.log('貸出データの全列:');
  allColumns.forEach((col, index) => {
    console.log(`  ${index + 1}. ${col}`);
  });
  
  // 最初の5件の完全なデータを表示
  console.log('\n最初の5件の完全なデータ:');
  loanData.slice(0, 5).forEach((row, index) => {
    console.log(`\n--- 貸出レコード ${index + 1} ---`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`  ${key}: ${value}`);
    });
  });
  
  // 部門別データ分析
  console.log('\n=== 部門別詳細分析 ===');
  const deptAnalysis = {};
  
  loanData.forEach((row, index) => {
    const deptCode = row['部門コード'] || row['DEPT_CODE'] || 'N/A';
    const productCode = row['商品コード'] || row['PRODUCT_CODE'] || 'N/A';
    const lotNumber = row['ロット番号'] || row['LOT_NUMBER'] || 'N/A';
    const responsiblePerson = row['担当者名'] || row['RESPONSIBLE_PERSON'] || 'N/A';
    const facilityName = row['施設名'] || row['FACILITY_NAME'] || 'N/A';
    const shipmentNumber = row['出荷番号'] || row['SHIPMENT_NUMBER'] || 'N/A';
    const loanDate = row['貸出日'] || row['LOAN_DATE'] || 'N/A';
    const expiryDate = row['有効期限'] || row['EXPIRY_DATE'] || 'N/A';
    
    if (!deptAnalysis[deptCode]) {
      deptAnalysis[deptCode] = {
        totalRecords: 0,
        uniqueProducts: new Set(),
        uniqueLots: new Set(),
        uniquePersons: new Set(),
        uniqueFacilities: new Set(),
        uniqueShipments: new Set(),
        sampleRecords: []
      };
    }
    
    deptAnalysis[deptCode].totalRecords++;
    deptAnalysis[deptCode].uniqueProducts.add(productCode);
    deptAnalysis[deptCode].uniqueLots.add(lotNumber);
    deptAnalysis[deptCode].uniquePersons.add(responsiblePerson);
    deptAnalysis[deptCode].uniqueFacilities.add(facilityName);
    deptAnalysis[deptCode].uniqueShipments.add(shipmentNumber);
    
    if (deptAnalysis[deptCode].sampleRecords.length < 3) {
      deptAnalysis[deptCode].sampleRecords.push({
        recordNumber: index + 1,
        productCode,
        lotNumber,
        responsiblePerson,
        facilityName,
        shipmentNumber,
        loanDate,
        expiryDate
      });
    }
  });
  
  // 部門別結果表示
  Object.entries(deptAnalysis).forEach(([dept, data]) => {
    console.log(`\n部門 ${dept}:`);
    console.log(`  総レコード数: ${data.totalRecords}件`);
    console.log(`  商品種類数: ${data.uniqueProducts.size}種類`);
    console.log(`  ロット数: ${data.uniqueLots.size}個`);
    console.log(`  担当者数: ${data.uniquePersons.size}名`);
    console.log(`  施設数: ${data.uniqueFacilities.size}施設`);
    console.log(`  出荷番号数: ${data.uniqueShipments.size}件`);
    
    console.log(`  担当者一覧: ${Array.from(data.uniquePersons).filter(p => p !== 'N/A').join(', ')}`);
    console.log(`  施設一覧（上位5件）: ${Array.from(data.uniqueFacilities).filter(f => f !== 'N/A').slice(0, 5).join(', ')}`);
    
    console.log(`  サンプルレコード:`);
    data.sampleRecords.forEach(sample => {
      console.log(`    ${sample.recordNumber}. 商品:${sample.productCode} ロット:${sample.lotNumber} 担当:${sample.responsiblePerson} 施設:${sample.facilityName}`);
      console.log(`       出荷:${sample.shipmentNumber} 貸出日:${sample.loanDate} 期限:${sample.expiryDate}`);
    });
  });
  
  // 在庫データとのマッチング条件確認
  console.log('\n=== マッチング条件確認 ===');
  console.log('貸出データで使用可能なマッチングキー:');
  console.log(`  部門コード: ${loanData.filter(r => r['部門コード']).length}件`);
  console.log(`  商品コード: ${loanData.filter(r => r['商品コード']).length}件`);
  console.log(`  ロット番号: ${loanData.filter(r => r['ロット番号']).length}件`);
  console.log(`  有効期限: ${loanData.filter(r => r['有効期限']).length}件`);
  console.log(`  担当者名: ${loanData.filter(r => r['担当者名']).length}件`);
  console.log(`  施設名: ${loanData.filter(r => r['施設名']).length}件`);
  console.log(`  出荷番号: ${loanData.filter(r => r['出荷番号']).length}件`);
  
  // ユニークなマッチングパターンを分析
  console.log('\n=== ユニークマッチングパターン分析 ===');
  const matchingPatterns = new Map();
  
  loanData.forEach((row, index) => {
    const deptCode = row['部門コード'] || '';
    const productCode = row['商品コード'] || '';
    const lotNumber = row['ロット番号'] || '';
    const expiryDate = row['有効期限'] || '';
    
    if (deptCode && productCode && lotNumber) {
      const pattern = `${deptCode}|${productCode}|${lotNumber}|${expiryDate}`;
      if (!matchingPatterns.has(pattern)) {
        matchingPatterns.set(pattern, {
          count: 0,
          responsiblePersons: new Set(),
          facilities: new Set(),
          shipmentNumbers: new Set(),
          firstRecord: index + 1
        });
      }
      
      const data = matchingPatterns.get(pattern);
      data.count++;
      data.responsiblePersons.add(row['担当者名'] || '');
      data.facilities.add(row['施設名'] || '');
      data.shipmentNumbers.add(row['出荷番号'] || '');
    }
  });
  
  console.log(`総マッチングパターン数: ${matchingPatterns.size}件`);
  console.log('重複パターン（同じ部門+商品+ロット+期限）:');
  
  let duplicateCount = 0;
  matchingPatterns.forEach((data, pattern) => {
    if (data.count > 1) {
      duplicateCount++;
      console.log(`  パターン: ${pattern}`);
      console.log(`    出現回数: ${data.count}回`);
      console.log(`    担当者: ${Array.from(data.responsiblePersons).join(', ')}`);
      console.log(`    施設: ${Array.from(data.facilities).join(', ')}`);
    }
  });
  
  console.log(`\n重複パターン数: ${duplicateCount}件`);
  console.log(`ユニークパターン数: ${matchingPatterns.size - duplicateCount}件`);
  
} catch (error) {
  console.error('エラー:', error.message);
  console.error('スタック:', error.stack);
}