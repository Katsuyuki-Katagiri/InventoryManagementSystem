
import XLSX from 'xlsx';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

try {
  // 最新のExcelファイルを探す
  const attachedDir = path.resolve('attached_assets');
  const files = fs.readdirSync(attachedDir);
  const excelFiles = files.filter(file => file.endsWith('.xlsx') || file.endsWith('.xls'));
  
  console.log('Available Excel files:', excelFiles);
  
  if (excelFiles.length === 0) {
    console.log('No Excel files found in attached_assets directory');
    process.exit(1);
  }
  
  // 最新のファイルを使用
  const latestFile = excelFiles[excelFiles.length - 1];
  const filePath = path.join(attachedDir, latestFile);
  
  console.log('Analyzing file:', latestFile);
  console.log('Full path:', filePath);
  
  const workbook = XLSX.readFile(filePath);
  const sheetNames = workbook.SheetNames;
  console.log('Sheet names:', sheetNames);
  
  const firstSheet = workbook.Sheets[sheetNames[0]];
  const data = XLSX.utils.sheet_to_json(firstSheet, { header: 1, defval: '' });
  
  console.log('\n=== EXCEL FILE ANALYSIS ===');
  console.log('Total rows:', data.length);
  
  if (data.length > 0) {
    console.log('\nColumn headers (Row 1):');
    data[0].forEach((header, i) => {
      console.log(`Column ${i + 1}: "${header}"`);
    });
    
    console.log('\nFirst 5 data rows:');
    data.slice(1, 6).forEach((row, i) => {
      console.log(`Data Row ${i + 1}:`, row);
    });
  }
  
  // Convert to JSON format
  const jsonData = XLSX.utils.sheet_to_json(firstSheet);
  console.log('\nDetected column names:');
  if (jsonData.length > 0) {
    Object.keys(jsonData[0]).forEach((key, i) => {
      console.log(`${i + 1}. "${key}"`);
    });
  }
  
  console.log('\nSample JSON data (first 3 records):');
  console.log(JSON.stringify(jsonData.slice(0, 3), null, 2));
  
} catch (error) {
  console.error('Error reading Excel file:', error.message);
  console.error('Full error:', error);
}
