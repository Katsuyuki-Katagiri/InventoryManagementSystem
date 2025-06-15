-- 2025年4月 在庫データと貸出データの完全付け合わせ
-- 既存の付け合わせをクリア（2025年4月データのみ）
UPDATE inventory SET 
  shipment_number = NULL,
  facility_name = NULL,
  responsible_person = NULL,
  shipment_date = NULL
WHERE inventory_month = '2025-04';

-- 貸出データと在庫データの完全付け合わせ開始
-- 部門0701の貸出データ
UPDATE inventory SET 
  shipment_number = 'B07A03000310',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0734607'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B07404000173',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '7588101'
    AND inventory.expiry_date = '2026-04-10'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B07404000173',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9093222'
    AND inventory.expiry_date = '2028-10-26'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B61304009577',
  facility_name = '順天堂大',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-03-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8789113'
    AND inventory.expiry_date = '2026-10-09'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B61A02000115',
  facility_name = '虎の門病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-02-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0302821'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.inventory_month = '2025-04'
);

-- 部門0702の貸出データ
UPDATE inventory SET 
  shipment_number = 'B07A04000303',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9023309'
    AND inventory.expiry_date = '2028-04-06'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '241182'
    AND inventory.expiry_date = '2027-03-31'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B07A04000200',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9860603'
    AND inventory.expiry_date = '2028-08-29'
    AND inventory.inventory_month = '2025-04'
);

-- 部門0703の貸出データ
UPDATE inventory SET 
  shipment_number = 'B07A04000090',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9023309'
    AND inventory.expiry_date = '2028-04-06'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B61A04000486',
  facility_name = '大森赤十字病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9644801'
    AND inventory.expiry_date = '2028-07-26'
    AND inventory.inventory_month = '2025-04'
);

-- 部門0704の貸出データ
UPDATE inventory SET 
  shipment_number = 'B61A04021127',
  facility_name = '東京医科大　八王子医療センター',
  responsible_person = '菊池　義大',
  shipment_date = '2024-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0081312'
    AND inventory.expiry_date = '2029-08-11'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B61A04008194',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2024-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '241167'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.inventory_month = '2025-04'
);

-- 部門0705の貸出データ
UPDATE inventory SET 
  shipment_number = 'B61A04015151',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0269908'
    AND inventory.expiry_date = '2029-12-06'
    AND inventory.inventory_month = '2025-04'
);

UPDATE inventory SET 
  shipment_number = 'B61A04016133',
  facility_name = '船橋整形外科',
  responsible_person = '田上　剛',
  shipment_date = '2024-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244106'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.inventory_month = '2025-04'
);

-- 付け合わせ結果確認用クエリ
SELECT 
  d.department_code,
  d.department_name,
  COUNT(*) as total_inventory,
  COUNT(CASE WHEN shipment_number IS NOT NULL THEN 1 END) as matched_items,
  COUNT(DISTINCT responsible_person) as unique_persons
FROM inventory i
JOIN departments d ON i.department_id = d.id
WHERE i.inventory_month = '2025-04'
  AND d.department_code IN ('0701', '0702', '0703', '0704', '0705')
GROUP BY d.department_code, d.department_name
ORDER BY d.department_code;