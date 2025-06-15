import * as XLSX from 'xlsx';
import { db } from './server/db.js';
import { inventory, products, departments } from './shared/schema.js';
import { eq, and } from 'drizzle-orm';

const loanFilePath = './attached_assets/貸出一覧（25-04）_1749634099925.xlsx';

console.log('Starting accurate loan matching process...');

try {
  // Read loan data
  const workbook = XLSX.readFile(loanFilePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const loanData = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Processing ${loanData.length} loan records for accurate matching`);

  let matched = 0;
  let unmatched = 0;
  const unmatchedDetails = [];

  for (let i = 0; i < loanData.length; i++) {
    const loan = loanData[i];
    
    const departmentCode = String(loan['部門コード'] || '').trim();
    const productCode = String(loan['商品コード'] || '').trim();
    const lotNumber = String(loan['ロット番号'] || '').trim();
    const expiryDateStr = String(loan['有効期限'] || '').trim();
    const shipmentNumber = String(loan['出荷番号'] || '').trim();
    const facilityName = String(loan['施設名'] || '').trim();
    const responsiblePerson = String(loan['担当者名'] || '').trim();
    const loanDate = loan['貸出日'];

    // Skip if missing critical matching fields
    if (!departmentCode || !productCode || !lotNumber) {
      unmatched++;
      continue;
    }

    // Parse expiry date for matching
    let expiryDate = null;
    if (expiryDateStr && expiryDateStr !== '') {
      try {
        if (typeof loanDate === 'number') {
          // Excel serial date
          expiryDate = new Date((Number(expiryDateStr) - 25569) * 86400 * 1000);
        } else {
          expiryDate = new Date(expiryDateStr);
        }
        
        if (isNaN(expiryDate.getTime())) {
          expiryDate = null;
        }
      } catch (e) {
        console.log(`Could not parse expiry date: ${expiryDateStr}`);
        expiryDate = null;
      }
    }

    try {
      // Enhanced matching query: department_code + product_code + lot_number + expiry_date
      let matchingInventory;
      
      if (expiryDate) {
        matchingInventory = await db
          .select({
            inventoryId: inventory.id,
            currentFacility: inventory.facilityName,
            currentPerson: inventory.responsiblePerson
          })
          .from(inventory)
          .innerJoin(products, eq(inventory.productId, products.id))
          .innerJoin(departments, eq(inventory.departmentId, departments.id))
          .where(
            and(
              eq(departments.departmentCode, departmentCode),
              eq(products.productCode, productCode),
              eq(inventory.lotNumber, lotNumber),
              eq(inventory.expiryDate, expiryDate)
            )
          );
      } else {
        // Match without expiry date
        matchingInventory = await db
          .select({
            inventoryId: inventory.id,
            currentFacility: inventory.facilityName,
            currentPerson: inventory.responsiblePerson
          })
          .from(inventory)
          .innerJoin(products, eq(inventory.productId, products.id))
          .innerJoin(departments, eq(inventory.departmentId, departments.id))
          .where(
            and(
              eq(departments.departmentCode, departmentCode),
              eq(products.productCode, productCode),
              eq(inventory.lotNumber, lotNumber)
            )
          );
      }

      if (matchingInventory.length > 0) {
        // Update all matching inventory records
        for (const match of matchingInventory) {
          await db
            .update(inventory)
            .set({
              shipmentNumber: shipmentNumber || null,
              facilityName: facilityName || null,
              responsiblePerson: responsiblePerson || null,
              shipmentDate: loanDate ? new Date(loanDate) : null,
            })
            .where(eq(inventory.id, match.inventoryId));
        }
        
        matched++;
        
        if (matched % 50 === 0) {
          console.log(`Processed ${matched} matches so far...`);
        }
      } else {
        unmatched++;
        unmatchedDetails.push({
          row: i + 1,
          departmentCode,
          productCode,
          lotNumber,
          expiryDate: expiryDateStr,
          shipmentNumber,
          facilityName
        });
      }
    } catch (error) {
      console.error(`Error processing loan record ${i + 1}:`, error.message);
      unmatched++;
    }
  }

  console.log('\n=== ACCURATE LOAN MATCHING RESULTS ===');
  console.log(`Total loan records: ${loanData.length}`);
  console.log(`Successfully matched: ${matched}`);
  console.log(`Unmatched: ${unmatched}`);
  
  if (unmatchedDetails.length > 0) {
    console.log('\nFirst 10 unmatched records:');
    unmatchedDetails.slice(0, 10).forEach(detail => {
      console.log(`Row ${detail.row}: Dept=${detail.departmentCode}, Product=${detail.productCode}, Lot=${detail.lotNumber}, Expiry=${detail.expiryDate}`);
    });
  }

  // Verify results by department
  console.log('\n=== VERIFICATION BY DEPARTMENT ===');
  const verificationQuery = await db
    .select({
      departmentCode: departments.departmentCode,
      departmentName: departments.departmentName,
      loanCount: db.raw('COUNT(CASE WHEN inventory.shipment_date IS NOT NULL THEN 1 END)').as('loan_count')
    })
    .from(departments)
    .leftJoin(inventory, eq(departments.id, inventory.departmentId))
    .groupBy(departments.departmentCode, departments.departmentName)
    .orderBy(departments.departmentCode);

  verificationQuery.forEach(dept => {
    console.log(`${dept.departmentCode} (${dept.departmentName}): ${dept.loanCount} loan items`);
  });

} catch (error) {
  console.error('Error in accurate loan matching:', error);
}