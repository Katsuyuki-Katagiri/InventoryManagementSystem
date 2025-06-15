import XLSX from 'xlsx';

console.log('=== Excel在庫一覧データとExcel貸出一覧データの完全分析 ===\n');

try {
  // 在庫一覧データの分析
  console.log('1. Excel在庫一覧データの分析:');
  const inventoryWorkbook = XLSX.readFile('./attached_assets/在庫データ2025.04_1749304674708.xlsx');
  console.log(`   シート名: ${inventoryWorkbook.SheetNames.join(', ')}`);
  
  const inventoryWorksheet = inventoryWorkbook.Sheets[inventoryWorkbook.SheetNames[0]];
  const inventoryData = XLSX.utils.sheet_to_json(inventoryWorksheet);
  
  console.log(`   総件数: ${inventoryData.length}件`);
  console.log('   列構造:');
  if (inventoryData.length > 0) {
    Object.keys(inventoryData[0]).forEach(key => {
      console.log(`     - ${key}`);
    });
  }

  // 最初の5件のサンプルデータを表示
  console.log('\n   サンプルデータ（最初の5件）:');
  inventoryData.slice(0, 5).forEach((row, index) => {
    console.log(`   Record ${index + 1}:`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`     ${key}: ${value}`);
    });
    console.log('');
  });

  // 貸出一覧データの分析
  console.log('\n2. Excel貸出一覧データの分析:');
  const loanWorkbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  console.log(`   シート名: ${loanWorkbook.SheetNames.join(', ')}`);
  
  const loanWorksheet = loanWorkbook.Sheets[loanWorkbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(loanWorksheet);
  
  console.log(`   総件数: ${loanData.length}件`);
  console.log('   列構造:');
  if (loanData.length > 0) {
    Object.keys(loanData[0]).forEach(key => {
      console.log(`     - ${key}`);
    });
  }

  // 最初の5件のサンプルデータを表示
  console.log('\n   サンプルデータ（最初の5件）:');
  loanData.slice(0, 5).forEach((row, index) => {
    console.log(`   Record ${index + 1}:`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`     ${key}: ${value}`);
    });
    console.log('');
  });

  // データ構造の詳細分析
  console.log('\n3. データ構造詳細分析:');
  const inventoryKeys = inventoryData.length > 0 ? Object.keys(inventoryData[0]) : [];
  const loanKeys = loanData.length > 0 ? Object.keys(loanData[0]) : [];
  
  console.log('   在庫一覧の全キー:');
  inventoryKeys.forEach(key => console.log(`     - ${key}`));
  
  console.log('\n   貸出一覧の全キー:');
  loanKeys.forEach(key => console.log(`     - ${key}`));

  // 共通するキーを特定
  const commonKeys = inventoryKeys.filter(key => loanKeys.includes(key));
  console.log('\n   共通キー:');
  commonKeys.forEach(key => console.log(`     - ${key}`));

  // 在庫データの部門別分析
  console.log('\n4. 在庫データの部門別詳細分析:');
  const inventoryDeptAnalysis = {};
  inventoryData.forEach(row => {
    const deptCode = row['部門コード'] || row['DEPT_CODE'] || row['deptCode'] || 'N/A';
    const productCode = row['商品コード'] || row['PRODUCT_CODE'] || row['productCode'] || 'N/A';
    const lotNumber = row['ロット番号'] || row['LOT_NUMBER'] || row['lotNumber'] || 'N/A';
    
    if (!inventoryDeptAnalysis[deptCode]) {
      inventoryDeptAnalysis[deptCode] = {
        count: 0,
        products: new Set(),
        lots: new Set(),
        sampleData: []
      };
    }
    
    inventoryDeptAnalysis[deptCode].count++;
    inventoryDeptAnalysis[deptCode].products.add(productCode);
    inventoryDeptAnalysis[deptCode].lots.add(lotNumber);
    
    if (inventoryDeptAnalysis[deptCode].sampleData.length < 3) {
      inventoryDeptAnalysis[deptCode].sampleData.push({
        productCode,
        lotNumber,
        expiry: row['有効期限'] || row['EXPIRY_DATE'] || row['expiryDate'] || 'N/A'
      });
    }
  });

  Object.entries(inventoryDeptAnalysis).forEach(([dept, data]) => {
    console.log(`   部門 ${dept}:`);
    console.log(`     総件数: ${data.count}件`);
    console.log(`     商品種類: ${data.products.size}種類`);
    console.log(`     ロット数: ${data.lots.size}個`);
    console.log(`     サンプル:`);
    data.sampleData.forEach((sample, i) => {
      console.log(`       ${i+1}. 商品:${sample.productCode}, ロット:${sample.lotNumber}, 期限:${sample.expiry}`);
    });
    console.log('');
  });

  // 貸出データの部門別分析
  console.log('\n5. 貸出データの部門別詳細分析:');
  const loanDeptAnalysis = {};
  loanData.forEach(row => {
    const deptCode = row['部門コード'] || row['DEPT_CODE'] || row['deptCode'] || 'N/A';
    const productCode = row['商品コード'] || row['PRODUCT_CODE'] || row['productCode'] || 'N/A';
    const lotNumber = row['ロット番号'] || row['LOT_NUMBER'] || row['lotNumber'] || 'N/A';
    const responsiblePerson = row['担当者名'] || row['RESPONSIBLE_PERSON'] || row['responsiblePerson'] || 'N/A';
    const facilityName = row['施設名'] || row['FACILITY_NAME'] || row['facilityName'] || 'N/A';
    
    if (!loanDeptAnalysis[deptCode]) {
      loanDeptAnalysis[deptCode] = {
        count: 0,
        products: new Set(),
        lots: new Set(),
        persons: new Set(),
        facilities: new Set(),
        sampleData: []
      };
    }
    
    loanDeptAnalysis[deptCode].count++;
    loanDeptAnalysis[deptCode].products.add(productCode);
    loanDeptAnalysis[deptCode].lots.add(lotNumber);
    loanDeptAnalysis[deptCode].persons.add(responsiblePerson);
    loanDeptAnalysis[deptCode].facilities.add(facilityName);
    
    if (loanDeptAnalysis[deptCode].sampleData.length < 3) {
      loanDeptAnalysis[deptCode].sampleData.push({
        productCode,
        lotNumber,
        responsiblePerson,
        facilityName,
        expiry: row['有効期限'] || row['EXPIRY_DATE'] || row['expiryDate'] || 'N/A'
      });
    }
  });

  Object.entries(loanDeptAnalysis).forEach(([dept, data]) => {
    console.log(`   部門 ${dept}:`);
    console.log(`     総件数: ${data.count}件`);
    console.log(`     商品種類: ${data.products.size}種類`);
    console.log(`     ロット数: ${data.lots.size}個`);
    console.log(`     担当者: ${Array.from(data.persons).join(', ')}`);
    console.log(`     施設数: ${data.facilities.size}施設`);
    console.log(`     サンプル:`);
    data.sampleData.forEach((sample, i) => {
      console.log(`       ${i+1}. 商品:${sample.productCode}, ロット:${sample.lotNumber}, 担当:${sample.responsiblePerson}, 施設:${sample.facilityName}`);
    });
    console.log('');
  });

  // マッチング可能性分析
  console.log('\n6. マッチング可能性分析:');
  console.log('   在庫データと貸出データの正確なマッチング条件を確認:');
  
  // 各部門の在庫と貸出の商品コード・ロット番号の重複を確認
  Object.keys(loanDeptAnalysis).forEach(dept => {
    if (inventoryDeptAnalysis[dept]) {
      const inventoryProducts = inventoryDeptAnalysis[dept].products;
      const loanProducts = loanDeptAnalysis[dept].products;
      const inventoryLots = inventoryDeptAnalysis[dept].lots;
      const loanLots = loanDeptAnalysis[dept].lots;
      
      const commonProducts = Array.from(inventoryProducts).filter(p => loanProducts.has(p));
      const commonLots = Array.from(inventoryLots).filter(l => loanLots.has(l));
      
      console.log(`   部門 ${dept}:`);
      console.log(`     在庫商品: ${inventoryProducts.size}種類, 貸出商品: ${loanProducts.size}種類`);
      console.log(`     共通商品: ${commonProducts.length}種類`);
      console.log(`     在庫ロット: ${inventoryLots.size}個, 貸出ロット: ${loanLots.size}個`);
      console.log(`     共通ロット: ${commonLots.length}個`);
      
      if (commonProducts.length > 0) {
        console.log(`     共通商品例: ${commonProducts.slice(0, 5).join(', ')}`);
      }
      if (commonLots.length > 0) {
        console.log(`     共通ロット例: ${commonLots.slice(0, 5).join(', ')}`);
      }
      console.log('');
    }
  });

} catch (error) {
  console.error('エラー:', error.message);
  console.error('スタック:', error.stack);
}