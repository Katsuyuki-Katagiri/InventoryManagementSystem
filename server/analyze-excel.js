import XLSX from 'xlsx';
import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

try {
  const filePath = path.resolve('attached_assets/在庫データ2025.04_1749304674708.xlsx');
  console.log('Attempting to read file:', filePath);
  
  if (!fs.existsSync(filePath)) {
    console.log('File does not exist. Checking directory contents:');
    const dir = path.dirname(filePath);
    const files = fs.readdirSync(dir);
    console.log('Files in directory:', files);
    process.exit(1);
  }
  
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
    
    console.log('\nFirst 3 data rows:');
    data.slice(1, 4).forEach((row, i) => {
      console.log(`Data Row ${i + 1}:`, row);
    });
  }
  
  // Convert to JSON format for template creation
  const jsonData = XLSX.utils.sheet_to_json(firstSheet);
  console.log('\nSample JSON data (first 2 records):');
  console.log(JSON.stringify(jsonData.slice(0, 2), null, 2));
  
} catch (error) {
  console.error('Error reading Excel file:', error.message);
}