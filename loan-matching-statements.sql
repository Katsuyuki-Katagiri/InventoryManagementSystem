-- 貸出データ690件と在庫データの完全付け合わせ (2025年4月)
-- 部門コード + 商品コード + ロット番号 + 有効期限での完全一致

-- 部門0701 齋藤雄太の貸出
UPDATE inventory SET shipment_number = 'B07A03000310', facility_name = '慶應義塾大学病院', responsible_person = '齋藤　雄太', shipment_date = '2025-03-06'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240104100' AND inventory.lot_number = 'A0734607' AND inventory.expiry_date = '2030-11-20' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B07404000173', facility_name = '慶應義塾大学病院', responsible_person = '齋藤　雄太', shipment_date = '2024-04-02'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103400' AND inventory.lot_number = '7588101' AND inventory.expiry_date = '2026-04-10' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B07404000173', facility_name = '慶應義塾大学病院', responsible_person = '齋藤　雄太', shipment_date = '2024-04-02'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103100' AND inventory.lot_number = '9093222' AND inventory.expiry_date = '2028-10-26' AND inventory.inventory_month = '2025-04');

-- 部門0701 前川栞璃の貸出
UPDATE inventory SET shipment_number = 'B61304009577', facility_name = '順天堂大', responsible_person = '前川　栞璃', shipment_date = '2024-03-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103500' AND inventory.lot_number = '8789113' AND inventory.expiry_date = '2026-10-09' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61312000155', facility_name = '明理会中央総合病院', responsible_person = '前川　栞璃', shipment_date = '2024-03-12'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103300' AND inventory.lot_number = 'A0395108' AND inventory.expiry_date = '2030-09-05' AND inventory.inventory_month = '2025-04');

-- 部門0701 小倉一哉の貸出  
UPDATE inventory SET shipment_number = 'B61A02000115', facility_name = '虎の門病院', responsible_person = '小倉　一哉', shipment_date = '2024-02-02'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103200' AND inventory.lot_number = 'A0302821' AND inventory.expiry_date = '2030-06-07' AND inventory.inventory_month = '2025-04');

-- 部門0701 原千秋の貸出
UPDATE inventory SET shipment_number = 'B61306012138', facility_name = '永寿総合病院', responsible_person = '原　千秋', shipment_date = '2024-03-06'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103300' AND inventory.lot_number = 'A0395108' AND inventory.expiry_date = '2030-09-05' AND inventory.inventory_month = '2025-04');

-- 部門0701 姫野峻彬の貸出
UPDATE inventory SET shipment_number = 'B61309018393', facility_name = '順天堂練馬病院', responsible_person = '姫野　峻彬', shipment_date = '2024-03-09'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0701' AND p.product_code = '0240103500' AND inventory.lot_number = '9557507' AND inventory.expiry_date = '2028-08-22' AND inventory.inventory_month = '2025-04');

-- 部門0702 山下亮輔の貸出
UPDATE inventory SET shipment_number = 'B07A04000303', facility_name = '都立　広尾病院', responsible_person = '山下　亮輔', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '0240103500' AND inventory.lot_number = '9023309' AND inventory.expiry_date = '2028-04-06' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B07A04000186', facility_name = '都立　広尾病院', responsible_person = '山下　亮輔', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '02502277H0' AND inventory.lot_number = '241167' AND inventory.expiry_date = '2027-02-28' AND inventory.inventory_month = '2025-04');

-- 部門0702 東悠宇の貸出
UPDATE inventory SET shipment_number = 'B07409000093', facility_name = '江戸川病院', responsible_person = '東　悠宇', shipment_date = '2024-04-09'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '02502210H0' AND inventory.lot_number = '241182' AND inventory.expiry_date = '2027-03-31' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61A04000401', facility_name = '東京臨海病院', responsible_person = '東　悠宇', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '03026744H0' AND inventory.lot_number = '12510473' AND inventory.expiry_date = '2027-02-07' AND inventory.inventory_month = '2025-04');

-- 部門0702 小出大祐の貸出
UPDATE inventory SET shipment_number = 'B07A04000200', facility_name = '都立　墨東病院', responsible_person = '小出　大祐', shipment_date = '2024-04-02'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '0240103400' AND inventory.lot_number = '9860603' AND inventory.expiry_date = '2028-08-29' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61A04020139', facility_name = 'ＮＴＴ東日本関東', responsible_person = '小出　大祐', shipment_date = '2024-04-20'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0702' AND p.product_code = '0240103200' AND inventory.lot_number = 'A0100802' AND inventory.expiry_date = '2029-01-05' AND inventory.inventory_month = '2025-04');

-- 部門0703 荒井利浩の貸出
UPDATE inventory SET shipment_number = 'B07A04000090', facility_name = '東京女子医大', responsible_person = '荒井　利浩', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '0240103500' AND inventory.lot_number = '9023309' AND inventory.expiry_date = '2028-04-06' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61A04002035', facility_name = '東京女子医大', responsible_person = '荒井　利浩', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '02502277H0' AND inventory.lot_number = '244106' AND inventory.expiry_date = '2027-11-30' AND inventory.inventory_month = '2025-04');

-- 部門0703 藤江尚樹の貸出
UPDATE inventory SET shipment_number = 'B61A04000486', facility_name = '大森赤十字病院', responsible_person = '藤江　尚樹', shipment_date = '2024-04-15'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '0240103100' AND inventory.lot_number = '9644801' AND inventory.expiry_date = '2028-07-26' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61A04005179', facility_name = '大森赤十字病院', responsible_person = '藤江　尚樹', shipment_date = '2024-04-04'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '0212022200' AND inventory.lot_number = '8P5A1512' AND inventory.expiry_date = '2028-02-23' AND inventory.inventory_month = '2025-04');

-- 部門0703 山田航の貸出
UPDATE inventory SET shipment_number = 'B61A04007142', facility_name = '東京慈恵医大病院', responsible_person = '山田　航', shipment_date = '2024-04-07'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '0230099900' AND inventory.lot_number = '-' AND inventory.expiry_date IS NULL AND inventory.inventory_month = '2025-04');

-- 部門0703 片桐日南多の貸出
UPDATE inventory SET shipment_number = 'B61A04008185', facility_name = '厚生中央病院', responsible_person = '片桐　日南多', shipment_date = '2024-04-08'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0703' AND p.product_code = '03900436H0' AND inventory.lot_number = '22857' AND inventory.expiry_date = '2024-08-31' AND inventory.inventory_month = '2025-04');

-- 部門0704 菊池義大の貸出
UPDATE inventory SET shipment_number = 'B61A04021127', facility_name = '東京医科大　八王子医療センター', responsible_person = '菊池　義大', shipment_date = '2024-04-21'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0704' AND p.product_code = '0240103200' AND inventory.lot_number = 'A0081312' AND inventory.expiry_date = '2029-08-11' AND inventory.inventory_month = '2025-04');

-- 部門0704 贄田高典の貸出
UPDATE inventory SET shipment_number = 'B61A04008194', facility_name = '東京科学大学病院', responsible_person = '贄田　高典', shipment_date = '2024-04-08'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0704' AND p.product_code = '02502277H0' AND inventory.lot_number = '241167' AND inventory.expiry_date = '2027-02-28' AND inventory.inventory_month = '2025-04');

-- 部門0704 塚本怜生の貸出
UPDATE inventory SET shipment_number = 'B61A04019110', facility_name = '都立　多摩南部地域病院', responsible_person = '塚本　怜生', shipment_date = '2024-04-19'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0704' AND p.product_code = '0212022100' AND inventory.lot_number = '8P4E0213' AND inventory.expiry_date = '2027-12-13' AND inventory.inventory_month = '2025-04');

-- 部門0704 高橋健児の貸出
UPDATE inventory SET shipment_number = 'B61A04018149', facility_name = '榊原記念病院', responsible_person = '高橋　健児', shipment_date = '2024-04-18'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0704' AND p.product_code = '03026744H0' AND inventory.lot_number = '12510473' AND inventory.expiry_date = '2027-02-07' AND inventory.inventory_month = '2025-04');

-- 部門0705 柳澤一暢の貸出
UPDATE inventory SET shipment_number = 'B61A04015151', facility_name = '千葉西総合病院', responsible_person = '柳澤　一暢', shipment_date = '2024-04-15'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '0240103200' AND inventory.lot_number = 'A0269908' AND inventory.expiry_date = '2029-12-06' AND inventory.inventory_month = '2025-04');

-- 部門0705 田上剛の貸出
UPDATE inventory SET shipment_number = 'B61A04016133', facility_name = '船橋整形外科', responsible_person = '田上　剛', shipment_date = '2024-04-16'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '02502277H0' AND inventory.lot_number = '244106' AND inventory.expiry_date = '2027-11-30' AND inventory.inventory_month = '2025-04');

UPDATE inventory SET shipment_number = 'B61A04014165', facility_name = '船橋医療センター', responsible_person = '田上　剛', shipment_date = '2024-04-14'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '02025235H0' AND inventory.lot_number = '251062' AND inventory.expiry_date = '2027-04-12' AND inventory.inventory_month = '2025-04');

-- 部門0705 堀越拓の貸出
UPDATE inventory SET shipment_number = 'B61A04013107', facility_name = '誠馨会　新東京病院', responsible_person = '堀越　拓', shipment_date = '2024-04-13'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '0212022200' AND inventory.lot_number = '8P5A1512' AND inventory.expiry_date = '2028-02-23' AND inventory.inventory_month = '2025-04');

-- 部門0705 渥美智基の貸出
UPDATE inventory SET shipment_number = 'B61A04012118', facility_name = '海浜病院', responsible_person = '渥美　智基', shipment_date = '2024-04-12'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '03200817H0' AND inventory.lot_number = '220711' AND inventory.expiry_date = '2024-07-10' AND inventory.inventory_month = '2025-04');

-- 部門0705 内田遥の貸出
UPDATE inventory SET shipment_number = 'B61A04011124', facility_name = '千葉県済生会習志野病院', responsible_person = '内田　遥', shipment_date = '2024-04-11'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '03126033H0' AND inventory.lot_number = '12510749' AND inventory.expiry_date = '2027-03-16' AND inventory.inventory_month = '2025-04');

-- 部門0705 市川佳奈の貸出
UPDATE inventory SET shipment_number = 'B61A04010135', facility_name = '柏厚生病院', responsible_person = '市川　佳奈', shipment_date = '2024-04-10'
WHERE EXISTS (SELECT 1 FROM products p, departments d WHERE p.id = inventory.product_id AND d.id = inventory.department_id AND d.department_code = '0705' AND p.product_code = '04512042H0' AND inventory.lot_number = 'SIM0523F' AND inventory.expiry_date IS NULL AND inventory.inventory_month = '2025-04');