import XLSX from 'xlsx';

console.log('=== 2025年4月 在庫一覧データと貸出一覧データの正確な付け合わせ ===\n');

try {
  // 在庫一覧データの分析
  console.log('1. 在庫一覧データ（2025年4月）の読み込み...');
  const inventoryWorkbook = XLSX.readFile('./attached_assets/在庫データ2025.04_1749304674708.xlsx');
  const inventoryWorksheet = inventoryWorkbook.Sheets[inventoryWorkbook.SheetNames[0]];
  const inventoryData = XLSX.utils.sheet_to_json(inventoryWorksheet);
  
  console.log(`   在庫データ件数: ${inventoryData.length}件`);
  console.log('   在庫データの列構造:');
  if (inventoryData.length > 0) {
    Object.keys(inventoryData[0]).forEach((key, index) => {
      console.log(`     ${index + 1}. ${key}`);
    });
  }

  // 貸出一覧データの読み込み
  console.log('\n2. 貸出一覧データ（2025年4月）の読み込み...');
  const loanWorkbook = XLSX.readFile('./attached_assets/貸出一覧（25-04）_1749634099925.xlsx');
  const loanWorksheet = loanWorkbook.Sheets[loanWorkbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(loanWorksheet);
  
  console.log(`   貸出データ件数: ${loanData.length}件`);

  // 在庫データサンプル分析
  console.log('\n3. 在庫データサンプル分析（最初の5件）:');
  inventoryData.slice(0, 5).forEach((row, index) => {
    console.log(`   在庫レコード ${index + 1}:`);
    Object.entries(row).forEach(([key, value]) => {
      console.log(`     ${key}: ${value}`);
    });
    console.log('');
  });

  // 在庫データの構造に基づいたキー特定
  console.log('\n4. 在庫データのマッチングキー特定:');
  const inventoryKeys = inventoryData.length > 0 ? Object.keys(inventoryData[0]) : [];
  
  // 可能なキー名パターンを確認
  const deptCodeKey = inventoryKeys.find(k => k.includes('部門') || k.includes('DEPT') || k.toLowerCase().includes('department'));
  const productCodeKey = inventoryKeys.find(k => k.includes('商品') || k.includes('PRODUCT') || k.toLowerCase().includes('product'));
  const lotNumberKey = inventoryKeys.find(k => k.includes('ロット') || k.includes('LOT') || k.toLowerCase().includes('lot'));
  const expiryDateKey = inventoryKeys.find(k => k.includes('有効期限') || k.includes('EXPIRY') || k.toLowerCase().includes('expiry'));
  
  console.log(`   部門コードキー: ${deptCodeKey}`);
  console.log(`   商品コードキー: ${productCodeKey}`);
  console.log(`   ロット番号キー: ${lotNumberKey}`);
  console.log(`   有効期限キー: ${expiryDateKey}`);

  // 在庫データのマッチングパターンを構築
  console.log('\n5. 在庫データのマッチングパターン構築:');
  const inventoryPatterns = new Map();
  
  inventoryData.forEach((row, index) => {
    const deptCode = String(row[deptCodeKey] || '').trim();
    const productCode = String(row[productCodeKey] || '').trim();
    const lotNumber = String(row[lotNumberKey] || '').trim();
    const expiryDate = row[expiryDateKey];
    
    // 日付を標準化
    let standardExpiryDate = '';
    if (expiryDate) {
      try {
        let dateObj;
        if (typeof expiryDate === 'number') {
          // Excelの日付シリアル値
          dateObj = new Date((Number(expiryDate) - 25569) * 86400 * 1000);
        } else {
          dateObj = new Date(expiryDate);
        }
        
        if (!isNaN(dateObj.getTime())) {
          standardExpiryDate = dateObj.toISOString().split('T')[0];
        }
      } catch (e) {
        // 日付解析エラーは無視
      }
    }
    
    if (deptCode && productCode && lotNumber) {
      const pattern = `${deptCode}|${productCode}|${lotNumber}|${standardExpiryDate}`;
      
      if (!inventoryPatterns.has(pattern)) {
        inventoryPatterns.set(pattern, []);
      }
      
      inventoryPatterns.get(pattern).push({
        rowIndex: index + 1,
        deptCode,
        productCode,
        lotNumber,
        expiryDate: standardExpiryDate,
        originalRow: row
      });
    }
  });
  
  console.log(`   在庫パターン数: ${inventoryPatterns.size}件`);

  // 貸出データのマッチングパターンを構築
  console.log('\n6. 貸出データのマッチングパターン構築:');
  const loanPatterns = new Map();
  
  loanData.forEach((row, index) => {
    const deptCode = String(row['部門コード'] || '').trim();
    const productCode = String(row['商品コード'] || '').trim();
    const lotNumber = String(row['ロット番号'] || '').trim();
    const expiryDate = row['有効期限'];
    
    // 日付を標準化
    let standardExpiryDate = '';
    if (expiryDate) {
      try {
        let dateObj;
        if (typeof expiryDate === 'number') {
          dateObj = new Date((Number(expiryDate) - 25569) * 86400 * 1000);
        } else {
          dateObj = new Date(expiryDate);
        }
        
        if (!isNaN(dateObj.getTime())) {
          standardExpiryDate = dateObj.toISOString().split('T')[0];
        }
      } catch (e) {
        // 日付解析エラーは無視
      }
    }
    
    if (deptCode && productCode && lotNumber) {
      const pattern = `${deptCode}|${productCode}|${lotNumber}|${standardExpiryDate}`;
      
      if (!loanPatterns.has(pattern)) {
        loanPatterns.set(pattern, []);
      }
      
      loanPatterns.get(pattern).push({
        rowIndex: index + 1,
        deptCode,
        productCode,
        lotNumber,
        expiryDate: standardExpiryDate,
        responsiblePerson: row['担当者名'] || '',
        facilityName: row['施設名'] || '',
        shipmentNumber: row['出荷番号'] || '',
        loanDate: row['貸出日'] || '',
        originalRow: row
      });
    }
  });
  
  console.log(`   貸出パターン数: ${loanPatterns.size}件`);

  // 完全一致マッチング実行
  console.log('\n7. 完全一致マッチング実行:');
  let exactMatches = 0;
  let noMatches = 0;
  const matchResults = [];
  
  loanPatterns.forEach((loanItems, pattern) => {
    if (inventoryPatterns.has(pattern)) {
      const inventoryItems = inventoryPatterns.get(pattern);
      
      loanItems.forEach(loanItem => {
        inventoryItems.forEach(inventoryItem => {
          exactMatches++;
          matchResults.push({
            loanRowIndex: loanItem.rowIndex,
            inventoryRowIndex: inventoryItem.rowIndex,
            pattern: pattern,
            deptCode: loanItem.deptCode,
            productCode: loanItem.productCode,
            lotNumber: loanItem.lotNumber,
            expiryDate: loanItem.expiryDate,
            responsiblePerson: loanItem.responsiblePerson,
            facilityName: loanItem.facilityName,
            shipmentNumber: loanItem.shipmentNumber,
            loanDate: loanItem.loanDate
          });
        });
      });
    } else {
      loanItems.forEach(loanItem => {
        noMatches++;
        console.log(`   マッチなし: 貸出${loanItem.rowIndex} - ${pattern}`);
      });
    }
  });
  
  console.log('\n8. マッチング結果:');
  console.log(`   完全一致: ${exactMatches}件`);
  console.log(`   マッチなし: ${noMatches}件`);
  console.log(`   総貸出件数: ${loanData.length}件`);
  console.log(`   マッチング率: ${((exactMatches / loanData.length) * 100).toFixed(2)}%`);

  // マッチング結果をSQLで出力
  console.log('\n9. SQL更新文生成:');
  const sqlStatements = [];
  
  matchResults.forEach((match, index) => {
    // 日付の処理
    let loanDateSql = 'NULL';
    if (match.loanDate) {
      try {
        let dateObj;
        if (typeof match.loanDate === 'number') {
          dateObj = new Date((Number(match.loanDate) - 25569) * 86400 * 1000);
        } else {
          dateObj = new Date(match.loanDate);
        }
        
        if (!isNaN(dateObj.getTime())) {
          loanDateSql = `'${dateObj.toISOString().split('T')[0]}'`;
        }
      } catch (e) {
        loanDateSql = 'NULL';
      }
    }
    
    const sql = `
-- Match ${index + 1}: 貸出行${match.loanRowIndex} → 在庫行${match.inventoryRowIndex}
UPDATE inventory SET 
  shipment_number = '${match.shipmentNumber.replace(/'/g, "''")}',
  facility_name = '${match.facilityName.replace(/'/g, "''")}',
  responsible_person = '${match.responsiblePerson.replace(/'/g, "''")}',
  shipment_date = ${loanDateSql}
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '${match.deptCode}'
    AND p.product_code = '${match.productCode}'
    AND inventory.lot_number = '${match.lotNumber}'
    ${match.expiryDate ? `AND inventory.expiry_date = '${match.expiryDate}'` : 'AND inventory.expiry_date IS NULL'}
    AND inventory.inventory_month = '2025-04'
);`;
    
    sqlStatements.push(sql);
  });
  
  // SQLファイルに書き出し
  import('fs').then(fs => {
    const fullSql = sqlStatements.join('\n\n');
    fs.writeFileSync('accurate-loan-matching.sql', fullSql);
    console.log(`\n10. SQL出力完了: accurate-loan-matching.sql (${sqlStatements.length}件の更新文)`);
    
    // 統計情報もファイルに出力
    const summary = `-- 2025年4月 在庫・貸出データ付け合わせ結果
-- 在庫データ件数: ${inventoryData.length}件
-- 貸出データ件数: ${loanData.length}件
-- 完全一致: ${exactMatches}件
-- マッチなし: ${noMatches}件
-- マッチング率: ${((exactMatches / loanData.length) * 100).toFixed(2)}%
-- 生成日時: ${new Date().toISOString()}

${fullSql}`;
    
    fs.writeFileSync('complete-accurate-matching.sql', summary);
    console.log('    統計付きSQL出力: complete-accurate-matching.sql');
  });

} catch (error) {
  console.error('エラー:', error.message);
  console.error('スタック:', error.stack);
}