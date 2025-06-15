import * as XLSX from 'xlsx';
import { db } from './db.js';
import { inventory, products, departments } from '../shared/schema.js';
import { eq, and } from 'drizzle-orm';

/**
 * Enhanced loan matching logic using:
 * - 部門コード (Department Code)
 * - 商品コード (Product Code) 
 * - ロット番号 (Lot Number)
 * - 有効期限 (Expiry Date)
 */
export async function matchLoanDataWithInventory(loanFilePath) {
  console.log('Reading loan data from Excel file...');
  const workbook = XLSX.readFile(loanFilePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Found ${loanData.length} loan records`);

  let matched = 0;
  let unmatched = 0;
  
  for (let i = 0; i < loanData.length; i++) {
    const loanRow = loanData[i];
    
    const departmentCode = loanRow['部門コード'] || '';
    const productCode = loanRow['商品コード'] || '';
    const lotNumber = loanRow['ロット番号'] || '';
    const expiryDateStr = loanRow['有効期限'] || '';
    const shipmentNumber = loanRow['出荷番号'] || '';
    const facilityName = loanRow['施設名'] || '';
    const responsiblePerson = loanRow['担当者名'] || '';
    
    if (!departmentCode || !productCode || !lotNumber) {
      console.log(`Skipping loan row ${i + 1}: Missing required fields`);
      unmatched++;
      continue;
    }

    try {
      // Parse expiry date
      let expiryDate = null;
      if (expiryDateStr) {
        try {
          expiryDate = new Date(expiryDateStr);
          if (isNaN(expiryDate.getTime())) {
            expiryDate = null;
          }
        } catch (e) {
          console.log(`Could not parse expiry date: ${expiryDateStr}`);
        }
      }

      // Find matching inventory items using enhanced criteria
      const matchingInventory = await db
        .select({
          inventoryId: inventory.id,
          productId: products.id,
          departmentCode: departments.departmentCode
        })
        .from(inventory)
        .innerJoin(products, eq(inventory.productId, products.id))
        .innerJoin(departments, eq(inventory.departmentId, departments.id))
        .where(
          and(
            eq(departments.departmentCode, departmentCode),
            eq(products.productCode, productCode),
            eq(inventory.lotNumber, lotNumber),
            expiryDate ? eq(inventory.expiryDate, expiryDate) : undefined
          )
        );

      if (matchingInventory.length > 0) {
        // Update matching inventory items with loan information
        for (const match of matchingInventory) {
          await db
            .update(inventory)
            .set({
              shipmentNumber: shipmentNumber || null,
              facilityName: facilityName || null,
              responsiblePerson: responsiblePerson || null,
              shipmentDate: loanRow['貸出日'] ? new Date(loanRow['貸出日']) : null,
            })
            .where(eq(inventory.id, match.inventoryId));
        }
        
        matched++;
        console.log(`Matched loan record ${i + 1} with ${matchingInventory.length} inventory items`);
      } else {
        unmatched++;
        console.log(`No match found for loan record ${i + 1}: Dept=${departmentCode}, Product=${productCode}, Lot=${lotNumber}, Expiry=${expiryDateStr}`);
      }
    } catch (error) {
      console.error(`Error processing loan row ${i + 1}:`, error.message);
      unmatched++;
    }
  }

  console.log(`Loan matching complete: ${matched} matched, ${unmatched} unmatched`);
  return { matched, unmatched, total: loanData.length };
}