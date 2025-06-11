import * as XLSX from 'xlsx';
import { db } from './server/db.js';
import { inventory, products } from './shared/schema.js';
import { eq, and } from 'drizzle-orm';

const filePath = './attached_assets/貸出一覧（25-04）_1749634099925.xlsx';

try {
  console.log('Reading loan data from Excel file...');
  const workbook = XLSX.readFile(filePath);
  const worksheet = workbook.Sheets[workbook.SheetNames[0]];
  const data = XLSX.utils.sheet_to_json(worksheet);

  console.log(`Found ${data.length} loan records`);

  let updated = 0;
  
  for (let i = 0; i < data.length; i++) {
    const row = data[i];
    
    const productCode = row['商品コード'] || '';
    const lotNumber = row['ロット番号'] || '';
    const shipmentNumber = row['出荷番号'] || '';
    const facilityName = row['施設名'] || '';
    const responsiblePerson = row['担当者名'] || '';
    
    if (!productCode || !lotNumber || !shipmentNumber) continue;

    try {
      // Find matching inventory items by product code, lot number, and shipment number
      const matchingInventory = await db
        .select()
        .from(inventory)
        .innerJoin(products, eq(inventory.productId, products.id))
        .where(
          and(
            eq(products.productCode, productCode),
            eq(inventory.lotNumber, lotNumber),
            eq(inventory.shipmentNumber, shipmentNumber)
          )
        );

      if (matchingInventory.length > 0) {
        const inventoryRecord = matchingInventory[0];
        
        // Update inventory item with loan information
        await db
          .update(inventory)
          .set({
            facilityName: facilityName || null,
            responsiblePerson: responsiblePerson || null,
          })
          .where(eq(inventory.id, inventoryRecord.inventory.id));

        updated++;
        
        if (updated % 50 === 0) {
          console.log(`Updated ${updated} records...`);
        }
      }
    } catch (error) {
      console.error(`Error processing row ${i + 1}:`, error.message);
    }
  }

  console.log(`Successfully updated ${updated} inventory items with loan data`);
  
} catch (error) {
  console.error('Error processing loan data:', error);
}