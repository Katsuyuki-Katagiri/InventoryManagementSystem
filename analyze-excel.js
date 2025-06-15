import XLSX from 'xlsx';

console.log('=== Excel在庫一覧データとExcel貸出一覧データの完全分析 ===\n');

try {
  // 在庫一覧データの分析
  console.log('1. Excel在庫一覧データの分析:');
  const inventoryWorkbook = XLSX.readFile('./attached_assets/在庫データ2025.04_1749304674708.xlsx');
  const inventoryWorksheet = inventoryWorkbook.Sheets[inventoryWorkbook.SheetNames[0]];
  const inventoryData = XLSX.utils.sheet_to_json(inventoryWorksheet);
  
  console.log(`   総件数: ${inventoryData.length}件`);
  console.log('   列構造:');
  if (inventoryData.length > 0) {
    Object.keys(inventoryData[0]).forEach(key => {
      console.log(`     - ${key}`);
    });
  }

  // 最初の3件のサンプルデータを表示
  console.log('\n   サンプルデータ（最初の3件）:');
  inventoryData.slice(0, 3).forEach((row, index) => {
    console.log(`   Record ${index + 1}:`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`     ${key}: ${value}`);
    });
    console.log('');
  });

  // 貸出一覧データの分析
  console.log('\n2. Excel貸出一覧データの分析:');
  const loanWorkbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  const loanWorksheet = loanWorkbook.Sheets[loanWorkbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(loanWorksheet);
  
  console.log(`   総件数: ${loanData.length}件`);
  console.log('   列構造:');
  if (loanData.length > 0) {
    Object.keys(loanData[0]).forEach(key => {
      console.log(`     - ${key}`);
    });
  }

  // 最初の3件のサンプルデータを表示
  console.log('\n   サンプルデータ（最初の3件）:');
  loanData.slice(0, 3).forEach((row, index) => {
    console.log(`   Record ${index + 1}:`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`     ${key}: ${value}`);
    });
    console.log('');
  });

  // データ構造の違いを分析
  console.log('\n3. データ構造比較分析:');
  const inventoryKeys = inventoryData.length > 0 ? Object.keys(inventoryData[0]) : [];
  const loanKeys = loanData.length > 0 ? Object.keys(loanData[0]) : [];
  
  console.log('   在庫一覧の主要キー:');
  inventoryKeys.forEach(key => console.log(`     - ${key}`));
  
  console.log('\n   貸出一覧の主要キー:');
  loanKeys.forEach(key => console.log(`     - ${key}`));

  // 共通するキーを特定
  const commonKeys = inventoryKeys.filter(key => loanKeys.includes(key));
  console.log('\n   共通キー:');
  commonKeys.forEach(key => console.log(`     - ${key}`));

  // 在庫データの部門コード分析
  console.log('\n4. 在庫データの部門コード分析:');
  const inventoryDepts = {};
  inventoryData.forEach(row => {
    const deptCode = row['部門コード'] || row['DEPT_CODE'] || row['deptCode'];
    if (deptCode) {
      if (!inventoryDepts[deptCode]) inventoryDepts[deptCode] = 0;
      inventoryDepts[deptCode]++;
    }
  });
  Object.entries(inventoryDepts).forEach(([dept, count]) => {
    console.log(`   部門 ${dept}: ${count}件`);
  });

  // 貸出データの部門コード分析
  console.log('\n5. 貸出データの部門コード分析:');
  const loanDepts = {};
  loanData.forEach(row => {
    const deptCode = row['部門コード'] || row['DEPT_CODE'] || row['deptCode'];
    if (deptCode) {
      if (!loanDepts[deptCode]) loanDepts[deptCode] = 0;
      loanDepts[deptCode]++;
    }
  });
  Object.entries(loanDepts).forEach(([dept, count]) => {
    console.log(`   部門 ${dept}: ${count}件`);
  });

  // 商品コードパターン分析
  console.log('\n6. 商品コードパターン分析:');
  console.log('   在庫データの商品コード例:');
  const inventoryProductCodes = inventoryData.slice(0, 10).map(row => 
    row['商品コード'] || row['PRODUCT_CODE'] || row['productCode'] || 'N/A'
  );
  inventoryProductCodes.forEach(code => console.log(`     ${code}`));

  console.log('\n   貸出データの商品コード例:');
  const loanProductCodes = loanData.slice(0, 10).map(row => 
    row['商品コード'] || row['PRODUCT_CODE'] || row['productCode'] || 'N/A'
  );
  loanProductCodes.forEach(code => console.log(`     ${code}`));

} catch (error) {
  console.error('エラー:', error.message);
  console.error('スタック:', error.stack);
}