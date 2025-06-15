
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
    AND inventory.shipment_number IS NULL
);


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
    AND inventory.shipment_number IS NULL
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
    AND inventory.shipment_number IS NULL
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
    AND inventory.shipment_number IS NULL
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
    AND inventory.shipment_number IS NULL
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
    AND inventory.shipment_number IS NULL
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
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8927607'
    AND inventory.expiry_date = '2028-09-14'
    AND inventory.shipment_number IS NULL
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
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8927607'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07412000761',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-12-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0395108'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07412000761',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-12-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0395108'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000116',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9657815'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000116',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9657815'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304009577',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2023-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8789113'
    AND inventory.expiry_date = '2028-09-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304009577',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2023-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8789113'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61309018393',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2023-09-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9557507'
    AND inventory.expiry_date = '2029-05-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61309018393',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2023-09-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9557507'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408010442',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-08-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0302821'
    AND inventory.expiry_date = '2030-05-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408010442',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-08-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0302821'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412015138',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-12-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724203'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412015138',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-12-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724203'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013388',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0703201'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013388',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0703201'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03015384',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0875502'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03015384',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0875502'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03017793',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '243042'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03017793',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '243042'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03017793',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243163'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03017793',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243163'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012962',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012962',
  facility_name = '虎の門病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411022618',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-11-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '24JJ'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411022618',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2024-11-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '24JJ'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018989',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25BJ'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018989',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25BJ'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018990',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25BJ'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018990',
  facility_name = '慶應義塾大学病院',
  responsible_person = '齋藤　雄太',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25BJ'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404015050',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '241062'
    AND inventory.expiry_date = '2027-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404015050',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '241062'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001926',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '242073'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001926',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '242073'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001926',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '242083'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001926',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '242083'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243023'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243023'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243017'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243017'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242110'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411005913',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2024-11-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242110'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02022069',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2025-02-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440536'
    AND inventory.expiry_date = '2028-02-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02022069',
  facility_name = '永寿総合病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2025-02-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440536'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03002848',
  facility_name = '東京大学医学部附属病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0151003300'
    AND inventory.lot_number = '01000488'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03002848',
  facility_name = '東京大学医学部附属病院',
  responsible_person = '前川　栞璃',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0151003300'
    AND inventory.lot_number = '01000488'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P2I0715'
    AND inventory.expiry_date = '2025-10-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P2I0715'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P2I2205'
    AND inventory.expiry_date = '2025-11-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P2I2205'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P2K0711'
    AND inventory.expiry_date = '2025-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P2K0711'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212024100'
    AND inventory.lot_number = 'B2320201'
    AND inventory.expiry_date = '2025-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000122',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212024100'
    AND inventory.lot_number = 'B2320201'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07411001027',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-11-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0294915'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07411001027',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-11-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0294915'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07412001421',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-12-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0250512'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07412001421',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-12-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0250512'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000834',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0824908'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000834',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0824908'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000551',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546420'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000551',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546420'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000685',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502243H0'
    AND inventory.lot_number = '233050'
    AND inventory.expiry_date = '2026-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000685',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502243H0'
    AND inventory.lot_number = '233050'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000788',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8265605'
    AND inventory.expiry_date = '2027-08-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000788',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8265605'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A03001303',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0201302200'
    AND inventory.lot_number = '24883'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A03001303',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0201302200'
    AND inventory.lot_number = '24883'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412009199',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-12-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0270607'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412009199',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-12-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0270607'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501016997',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212024100'
    AND inventory.lot_number = 'B2440106'
    AND inventory.expiry_date = '2026-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501016997',
  facility_name = '順天堂大',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212024100'
    AND inventory.lot_number = 'B2440106'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8057125'
    AND inventory.expiry_date = '2027-05-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8057125'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8090827'
    AND inventory.expiry_date = '2027-04-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8090827'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8100701'
    AND inventory.expiry_date = '2027-04-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8100701'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8077515'
    AND inventory.expiry_date = '2027-03-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8077515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079701'
    AND inventory.expiry_date = '2027-02-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000182',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079701'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07406000877',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-06-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9235903'
    AND inventory.expiry_date = '2029-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07406000877',
  facility_name = '順天堂練馬病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-06-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9235903'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243043'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243043'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004945',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010306',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010306',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010306',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010306',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000330',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8339725'
    AND inventory.expiry_date = '2027-07-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000330',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8339725'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07312000225',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-12-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7966910'
    AND inventory.expiry_date = '2027-01-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07312000225',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-12-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7966910'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000407',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-03-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9149502'
    AND inventory.expiry_date = '2028-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000407',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-03-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9149502'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105016844',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2021-05-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7164425'
    AND inventory.expiry_date = '2027-01-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105016844',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2021-05-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7164425'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303024631',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-03-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9160119'
    AND inventory.expiry_date = '2028-12-15'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303024631',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-03-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9160119'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61309002318',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9557512'
    AND inventory.expiry_date = '2029-05-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61309002318',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9557512'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012075',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-09-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0461908100'
    AND inventory.lot_number = '2009032306002'
    AND inventory.expiry_date = '2026-06-17'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012075',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-09-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0461908100'
    AND inventory.lot_number = '2009032306002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02013876',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724213'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02013876',
  facility_name = '昭和大学病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000333',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8657409'
    AND inventory.expiry_date = '2028-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000333',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8657409'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000493',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8337706'
    AND inventory.expiry_date = '2027-09-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07305000493',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8337706'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000875',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0081304'
    AND inventory.expiry_date = '2030-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000875',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0081304'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61206009648',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2022-06-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8648220'
    AND inventory.expiry_date = '2028-05-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61206009648',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2022-06-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8648220'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61301017970',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9022503'
    AND inventory.expiry_date = '2028-08-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61301017970',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9022503'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305010379',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9227721'
    AND inventory.expiry_date = '2029-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305010379',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-05-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9227721'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61307007005',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-07-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7446403'
    AND inventory.expiry_date = '2025-04-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61307007005',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2023-07-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7446403'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012742',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7720521'
    AND inventory.expiry_date = '2026-09-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012742',
  facility_name = '昭和大学江東豊洲病院',
  responsible_person = '小倉　一哉',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7720521'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61210012833',
  facility_name = '明理会中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2022-10-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0460047100'
    AND inventory.lot_number = '21901470'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61210012833',
  facility_name = '明理会中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2022-10-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0460047100'
    AND inventory.lot_number = '21901470'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F1815'
    AND inventory.expiry_date = '2027-07-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F1815'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F2002'
    AND inventory.expiry_date = '2027-09-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F2002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H0110'
    AND inventory.expiry_date = '2027-08-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000253',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H0110'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002070',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J2102'
    AND inventory.expiry_date = '2027-11-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002070',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J2102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501003976',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0904'
    AND inventory.expiry_date = '2027-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501003976',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0904'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017000',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J2309'
    AND inventory.expiry_date = '2027-11-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017000',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J2309'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000147',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8599026'
    AND inventory.expiry_date = '2028-01-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000147',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '8599026'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000147',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7128109'
    AND inventory.expiry_date = '2027-01-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000147',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7128109'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000120',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0322714'
    AND inventory.expiry_date = '2030-05-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000120',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0322714'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000205',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759203'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000205',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759203'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408014056',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-08-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335608'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408014056',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2024-08-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335608'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02005188',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0703515'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02005188',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0703515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020963',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0230200200'
    AND inventory.lot_number = '11251003'
    AND inventory.expiry_date = '2027-01-17'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020963',
  facility_name = '浦安市川医療Ｃ',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0230200200'
    AND inventory.lot_number = '11251003'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000235',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8498815'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000235',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8498815'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000845',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724206'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000845',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0724206'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018399',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018399',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018399',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '241167'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02018399',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '241167'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07306001379',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2023-06-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8940109'
    AND inventory.expiry_date = '2029-01-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07306001379',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2023-06-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8940109'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07401000099',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9809512'
    AND inventory.expiry_date = '2029-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07401000099',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9809512'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405017196',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-05-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9821009'
    AND inventory.expiry_date = '2029-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405017196',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-05-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9821009'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0890112'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0890112'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0690314'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0690314'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0877309'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0877309'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1080012'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1080012'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1067109'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026842',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1067109'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61306001043',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2023-06-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '231074'
    AND inventory.expiry_date = '2026-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61306001043',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2023-06-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '231074'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008218',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '243121'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008218',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '243121'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008218',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '243133'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008218',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '243133'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03001811',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4L0911'
    AND inventory.expiry_date = '2028-01-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03001811',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4L0911'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007172',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2407'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007172',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2407'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03021973',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4E0213'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03021973',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4E0213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009183',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P5B1007'
    AND inventory.expiry_date = '2028-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009183',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P5B1007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025090',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A1512'
    AND inventory.expiry_date = '2028-02-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025090',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A1512'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04028029',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A2808'
    AND inventory.expiry_date = '2028-02-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04028029',
  facility_name = '森山記念病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A2808'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308009880',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2023-08-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3E1103'
    AND inventory.expiry_date = '2026-06-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308009880',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2023-08-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3E1103'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407027518',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-07-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C1304'
    AND inventory.expiry_date = '2027-04-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407027518',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-07-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C1304'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410026004',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G1915'
    AND inventory.expiry_date = '2027-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410026004',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-10-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G1915'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003760',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4F1908'
    AND inventory.expiry_date = '2027-07-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003760',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4F1908'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002074',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0803'
    AND inventory.expiry_date = '2027-11-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002074',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0803'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501011860',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0915'
    AND inventory.expiry_date = '2027-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501011860',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0915'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014509',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A0807'
    AND inventory.expiry_date = '2028-02-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014509',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P5A0807'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04021618',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K2610'
    AND inventory.expiry_date = '2028-01-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04021618',
  facility_name = '博慈会記念総合',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K2610'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62409000334',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-09-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2406015NTT'
    AND inventory.expiry_date = '2026-06-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62409000334',
  facility_name = '板橋中央総合病院',
  responsible_person = '原　千秋',
  shipment_date = '2024-09-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2406015NTT'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027120',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0151003400'
    AND inventory.lot_number = '21816'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027120',
  facility_name = '聖路加国際病院',
  responsible_person = '原　千秋',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0151003400'
    AND inventory.lot_number = '21816'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000729',
  facility_name = '国立国際医療センター',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '230718'
    AND inventory.expiry_date = '2026-07-17'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000729',
  facility_name = '国立国際医療センター',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '230718'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3D0607'
    AND inventory.expiry_date = '2026-04-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3D0607'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0805'
    AND inventory.expiry_date = '2026-10-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0805'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K0806'
    AND inventory.expiry_date = '2027-12-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000725',
  facility_name = '伯鳳会　東京曳舟病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K0806'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P3H0206'
    AND inventory.expiry_date = '2026-08-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P3H0206'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P2I0710'
    AND inventory.expiry_date = '2025-10-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P2I0710'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P2L0210'
    AND inventory.expiry_date = '2026-01-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000719',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P2L0210'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000720',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12440229'
    AND inventory.expiry_date = '2028-01-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000720',
  facility_name = '同愛記念病院',
  responsible_person = '姫野　峻彬',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0701'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12440229'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240724'
    AND inventory.expiry_date = '2027-07-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240724'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '230929'
    AND inventory.expiry_date = '2026-09-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '230929'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '230929'
    AND inventory.expiry_date = '2026-09-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '230929'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240806'
    AND inventory.expiry_date = '2027-08-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000333',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240806'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000334',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240606P'
    AND inventory.expiry_date = '2026-06-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000334',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240606P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000334',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '243038P'
    AND inventory.expiry_date = '2026-12-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000334',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '243038P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '232140'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '232140'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '244070'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '244070'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '224046'
    AND inventory.expiry_date = '2025-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '224046'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '233007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '242065'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '242065'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243018'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243018'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243142'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243142'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243183'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000336',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '243183'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232157'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232157'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232157'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232157'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242047'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242047'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '232165'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '232165'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '241147'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '241147'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '232166'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '232166'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '234068'
    AND inventory.expiry_date = '2026-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000338',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '234068'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012677',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244135'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012677',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244135'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '244108'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '244108'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244037'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244037'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244072'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244072'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244127'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244127'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232074'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232074'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244046'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244046'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251019'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251019'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '251067'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018645',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '251067'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018708',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.expiry_date = '2028-02-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04018708',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04022923',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251004'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04022923',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251004'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04022969',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244046'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04022969',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244046'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029210',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230200200'
    AND inventory.lot_number = '11251019'
    AND inventory.expiry_date = '2027-01-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029210',
  facility_name = '都立　広尾病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230200200'
    AND inventory.lot_number = '11251019'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241010'
    AND inventory.expiry_date = '2026-04-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241010'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '234115P'
    AND inventory.expiry_date = '2026-04-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '234115P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240513P'
    AND inventory.expiry_date = '2026-05-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000008',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240513P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020139',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '243076P'
    AND inventory.expiry_date = '2027-02-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020139',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '243076P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020139',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '241224P'
    AND inventory.expiry_date = '2026-12-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020139',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '241224P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020838',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251054'
    AND inventory.expiry_date = '2027-04-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020838',
  facility_name = '東京臨海病院',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251054'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079902'
    AND inventory.expiry_date = '2027-02-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079902'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9093228'
    AND inventory.expiry_date = '2028-10-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9093228'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9033204'
    AND inventory.expiry_date = '2028-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000739',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9033204'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001009',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440218'
    AND inventory.expiry_date = '2027-11-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001009',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440218'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408002838',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-08-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0315107'
    AND inventory.expiry_date = '2030-05-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408002838',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-08-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0315107'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408005522',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-08-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0269811'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408005522',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-08-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0269811'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008209',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243076'
    AND inventory.expiry_date = '2027-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008209',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243076'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008209',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242111'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412008209',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2024-12-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242111'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02011109',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440526'
    AND inventory.expiry_date = '2028-01-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02011109',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12440526'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02021647',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244037'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02021647',
  facility_name = '帝京板橋',
  responsible_person = '山下　亮輔',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244037'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000878',
  facility_name = 'ブレストサージャリークリニック',
  responsible_person = '東　悠宇',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0103101100'
    AND inventory.lot_number = '21661'
    AND inventory.expiry_date = '2023-01-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000878',
  facility_name = 'ブレストサージャリークリニック',
  responsible_person = '東　悠宇',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0103101100'
    AND inventory.lot_number = '21661'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000878',
  facility_name = 'ブレストサージャリークリニック',
  responsible_person = '東　悠宇',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0103101100'
    AND inventory.lot_number = '21662'
    AND inventory.expiry_date = '2023-01-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000878',
  facility_name = 'ブレストサージャリークリニック',
  responsible_person = '東　悠宇',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0103101100'
    AND inventory.lot_number = '21662'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07310000468',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2023-10-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8960720'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07310000468',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2023-10-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8960720'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61201014555',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-01-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '8044815'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61201014555',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-01-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '8044815'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61203008288',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-03-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8391011'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61203008288',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-03-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8391011'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61203008288',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-03-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8265903'
    AND inventory.expiry_date = '2027-08-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61203008288',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2022-03-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8265903'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308013851',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2023-08-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9157102'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308013851',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2023-08-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9157102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405020748',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2024-05-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0100904'
    AND inventory.expiry_date = '2030-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405020748',
  facility_name = '葛飾ハートセンター',
  responsible_person = '東　悠宇',
  shipment_date = '2024-05-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0100904'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120304100'
    AND inventory.lot_number = '20C'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120304100'
    AND inventory.lot_number = '20C'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120304200'
    AND inventory.lot_number = '20C'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120304200'
    AND inventory.lot_number = '20C'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307400'
    AND inventory.lot_number = '22L'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307400'
    AND inventory.lot_number = '22L'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307500'
    AND inventory.lot_number = '22J'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307500'
    AND inventory.lot_number = '22J'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120303400'
    AND inventory.lot_number = '24K'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120303400'
    AND inventory.lot_number = '24K'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307300'
    AND inventory.lot_number = '20C'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024116',
  facility_name = '新規開業施設(港区/Ginza 78 Clinic分院)',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0120307300'
    AND inventory.lot_number = '20C'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001391',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.expiry_date = '2028-02-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001391',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405008717',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-05-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '231078P'
    AND inventory.expiry_date = '2026-02-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405008717',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-05-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '231078P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410008764',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410008764',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410008764',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '242114'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410008764',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '242114'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018719',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '242007P'
    AND inventory.expiry_date = '2026-08-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018719',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0230201400'
    AND inventory.lot_number = '242007P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411009017',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-11-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243018'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411009017',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-11-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243018'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412024602',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '243008'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412024602',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '243008'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025603',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.expiry_date = '2028-02-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025603',
  facility_name = '日本大学病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501020706',
  facility_name = 'イムス東京葛飾総合病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0238518603'
    AND inventory.lot_number = '230724.22'
    AND inventory.expiry_date = '2026-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501020706',
  facility_name = 'イムス東京葛飾総合病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0238518603'
    AND inventory.lot_number = '230724.22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02014926',
  facility_name = 'イムス東京葛飾総合病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0238518603'
    AND inventory.lot_number = '230724.22'
    AND inventory.expiry_date = '2026-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02014926',
  facility_name = 'イムス東京葛飾総合病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0238518603'
    AND inventory.lot_number = '230724.22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3H1506'
    AND inventory.expiry_date = '2026-09-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3H1506'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3H1505'
    AND inventory.expiry_date = '2026-09-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3H1505'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0602'
    AND inventory.expiry_date = '2026-11-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0602'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '234027'
    AND inventory.expiry_date = '2026-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '234027'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C0707'
    AND inventory.expiry_date = '2027-04-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C0707'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '241182'
    AND inventory.expiry_date = '2027-03-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000093',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '241182'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000797',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12430175'
    AND inventory.expiry_date = '2027-07-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07410000797',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12430175'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000279',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C1506'
    AND inventory.expiry_date = '2027-05-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000279',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C1506'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018039',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '242154'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018039',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '242154'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018039',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410018039',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-10-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411026534',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-11-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H0602'
    AND inventory.expiry_date = '2027-09-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411026534',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-11-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H0602'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412023575',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-12-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4H2314'
    AND inventory.expiry_date = '2027-11-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412023575',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2024-12-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4H2314'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501008825',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0912'
    AND inventory.expiry_date = '2027-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501008825',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J0912'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014349',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D1514'
    AND inventory.expiry_date = '2027-07-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014349',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D1514'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014349',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4I1910'
    AND inventory.expiry_date = '2027-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014349',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4I1910'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501018724',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243184'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501018724',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '243184'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501018724',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '241074'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501018724',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '241074'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501020679',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J2505'
    AND inventory.expiry_date = '2027-11-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501020679',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J2505'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012551',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '251013'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012551',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '251013'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012551',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244075'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012551',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '244075'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012684',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '250213'
    AND inventory.expiry_date = '2028-02-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03012684',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '250213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03013035',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4L2312'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03013035',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4L2312'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000058',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '250213'
    AND inventory.expiry_date = '2028-02-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000058',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '250213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000280',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244112'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000280',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244112'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000280',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244045'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000280',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244045'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000709',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L1309'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000709',
  facility_name = '江戸川病院',
  responsible_person = '東　悠宇',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L1309'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000628',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251021'
    AND inventory.expiry_date = '2027-03-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000628',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251021'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012528',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0250206900'
    AND inventory.lot_number = '251013'
    AND inventory.expiry_date = '2028-02-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04012528',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0250206900'
    AND inventory.lot_number = '251013'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000713',
  facility_name = 'ＮＴＴ東日本関東',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243171'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000713',
  facility_name = 'ＮＴＴ東日本関東',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243171'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000713',
  facility_name = 'ＮＴＴ東日本関東',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000713',
  facility_name = 'ＮＴＴ東日本関東',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000223',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240508'
    AND inventory.expiry_date = '2027-05-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000223',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '240508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '234089'
    AND inventory.expiry_date = '2026-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '234089'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251049'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251049'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251060'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000467',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251060'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000468',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244154'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000468',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244154'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000468',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244056'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000468',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244056'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000610',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440213'
    AND inventory.expiry_date = '2027-10-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000610',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000632',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440535'
    AND inventory.expiry_date = '2028-02-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000632',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440535'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04001364',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.expiry_date = '2028-02-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04001364',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04001364',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510125'
    AND inventory.expiry_date = '2028-02-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04001364',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510125'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04013957',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.expiry_date = '2028-02-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04013957',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510126'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04028446',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12511232'
    AND inventory.expiry_date = '2028-03-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04028446',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12511232'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001493',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502280H0'
    AND inventory.lot_number = '251241'
    AND inventory.expiry_date = '2028-02-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001493',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502280H0'
    AND inventory.lot_number = '251241'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001493',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502279H0'
    AND inventory.lot_number = '251240'
    AND inventory.expiry_date = '2028-02-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001493',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502279H0'
    AND inventory.lot_number = '251240'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000403',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241218'
    AND inventory.expiry_date = '2027-01-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000403',
  facility_name = '都立　墨東病院',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241218'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000404',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '243001'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000404',
  facility_name = '日本医大',
  responsible_person = '小出　大祐',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0702'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '243001'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000268',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9023309'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000268',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9023309'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001035',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9860603'
    AND inventory.expiry_date = '2029-10-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001035',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9860603'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000709',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9644801'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000709',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9644801'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000904',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0707811'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000904',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0707811'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000904',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805305'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000904',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805305'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406011716',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-06-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0451825800'
    AND inventory.lot_number = 'SIM0321F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406011716',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-06-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0451825800'
    AND inventory.lot_number = 'SIM0321F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409021821',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-09-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0395102'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409021821',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-09-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0395102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412003213',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9298233'
    AND inventory.expiry_date = '2029-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412003213',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9298233'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412025685',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0589024'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412025685',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0589024'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03011798',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0736218'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03011798',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0736218'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029395',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0725810'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029395',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0725810'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029395',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1077508'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029395',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1077508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '231165'
    AND inventory.expiry_date = '2026-03-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '231165'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P3H0314'
    AND inventory.expiry_date = '2026-08-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P3H0314'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '234065'
    AND inventory.expiry_date = '2026-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '234065'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '234105'
    AND inventory.expiry_date = '2026-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '234105'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '234065'
    AND inventory.expiry_date = '2026-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000614',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '234065'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405000752',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-05-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241040'
    AND inventory.expiry_date = '2027-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405000752',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-05-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241040'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408017629',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-08-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421646'
    AND inventory.expiry_date = '2027-07-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408017629',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-08-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421646'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011178',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '243072'
    AND inventory.expiry_date = '2027-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011178',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '243072'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501006340',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-01-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '243144'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501006340',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-01-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '243144'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501006340',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-01-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0415'
    AND inventory.expiry_date = '2027-11-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501006340',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-01-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0415'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04013973',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12511222'
    AND inventory.expiry_date = '2028-03-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04013973',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12511222'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014183',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244135'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014183',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244135'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014183',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04014183',
  facility_name = '大森赤十字病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '242081'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0418'
    AND inventory.expiry_date = '2026-10-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I0418'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4A2915'
    AND inventory.expiry_date = '2027-02-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4A2915'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3L1314'
    AND inventory.expiry_date = '2027-01-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404012485',
  facility_name = '厚生中央病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-04-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3L1314'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '223080'
    AND inventory.expiry_date = '2025-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '223080'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '223086'
    AND inventory.expiry_date = '2025-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '223086'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '223126'
    AND inventory.expiry_date = '2025-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '223126'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '224009'
    AND inventory.expiry_date = '2025-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '224009'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '224039'
    AND inventory.expiry_date = '2025-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '224039'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12430563'
    AND inventory.expiry_date = '2027-09-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12430563'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12431782'
    AND inventory.expiry_date = '2027-11-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000457',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12431782'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000343',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0211500000'
    AND inventory.lot_number = '250128'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000343',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0211500000'
    AND inventory.lot_number = '250128'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000343',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0211504700'
    AND inventory.lot_number = '24462'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000343',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0211504700'
    AND inventory.lot_number = '24462'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07308001364',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2023-08-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8011001'
    AND inventory.expiry_date = '2027-04-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07308001364',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2023-08-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8011001'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000265',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0382602'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000265',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0382602'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000265',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0734611'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000265',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0734611'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61301019423',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2023-01-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8927811'
    AND inventory.expiry_date = '2028-07-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61301019423',
  facility_name = '東京ハートセンター',
  responsible_person = '荒井　利浩',
  shipment_date = '2023-01-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8927811'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61208005795',
  facility_name = '東京蒲田病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2022-08-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8839102'
    AND inventory.expiry_date = '2028-05-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61208005795',
  facility_name = '東京蒲田病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2022-08-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '8839102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003390',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4D2515'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003390',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4D2515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026836',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A3006'
    AND inventory.expiry_date = '2028-02-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026836',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A3006'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403014612',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-03-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0461908100'
    AND inventory.lot_number = '2009032306002'
    AND inventory.expiry_date = '2026-06-17'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403014612',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-03-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0461908100'
    AND inventory.lot_number = '2009032306002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000415',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0409'
    AND inventory.expiry_date = '2027-11-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000415',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0409'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000415',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4J2211'
    AND inventory.expiry_date = '2027-11-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000415',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4J2211'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000417',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '243045'
    AND inventory.expiry_date = '2026-12-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000417',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '243045'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000417',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '244017'
    AND inventory.expiry_date = '2027-01-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000417',
  facility_name = '健貢会　総合東京病院',
  responsible_person = '荒井　利浩',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '244017'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411013375',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-11-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0043050000'
    AND inventory.lot_number = '243129'
    AND inventory.expiry_date = '2027-07-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411013375',
  facility_name = '東京女子医大',
  responsible_person = '荒井　利浩',
  shipment_date = '2024-11-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0043050000'
    AND inventory.lot_number = '243129'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501001278',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J2302'
    AND inventory.expiry_date = '2027-11-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501001278',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4J2302'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011189',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4G2513'
    AND inventory.expiry_date = '2027-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011189',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4G2513'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002084',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0312'
    AND inventory.expiry_date = '2027-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002084',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0312'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014344',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D1515'
    AND inventory.expiry_date = '2027-07-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501014344',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D1515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02009306',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J3011'
    AND inventory.expiry_date = '2027-11-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02009306',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J3011'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02014905',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1310'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02014905',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1310'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03008615',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2412'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03008615',
  facility_name = '都立　大久保病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2412'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410009722',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '242005'
    AND inventory.expiry_date = '2026-09-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410009722',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '242005'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022973',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251037'
    AND inventory.expiry_date = '2027-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022973',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251037'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '244107'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '244107'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '244143'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '244143'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '251078'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '251078'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251076'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251076'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '243042'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '243042'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243174'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243174'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '244052'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004804',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '244052'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312016451',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-12-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3I3004'
    AND inventory.expiry_date = '2026-10-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312016451',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-12-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3I3004'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401008457',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-01-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3J2312'
    AND inventory.expiry_date = '2026-11-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401008457',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-01-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3J2312'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406004552',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241081'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406004552',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241081'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410007626',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '242122'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410007626',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '242122'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411019323',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-11-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0208'
    AND inventory.expiry_date = '2027-07-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411019323',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-11-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0208'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411022225',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-11-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0212'
    AND inventory.expiry_date = '2027-07-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411022225',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-11-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0212'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011183',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G1806'
    AND inventory.expiry_date = '2027-10-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412011183',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G1806'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412012528',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '243063'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412012528',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '243063'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412020729',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502220H0'
    AND inventory.lot_number = '244060'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412020729',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502220H0'
    AND inventory.lot_number = '244060'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412020729',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502219H0'
    AND inventory.lot_number = '244012'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412020729',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502219H0'
    AND inventory.lot_number = '244012'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412025132',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11243037'
    AND inventory.expiry_date = '2026-08-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412025132',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11243037'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004997',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244038'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02004997',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244038'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004233',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244076'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004233',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244076'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '244167'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '244167'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '244048'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '244048'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244045'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005803',
  facility_name = '関東中央病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '244045'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07311000474',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-11-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '232060'
    AND inventory.expiry_date = '2026-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07311000474',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-11-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502209H0'
    AND inventory.lot_number = '232060'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07311000474',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-11-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '232073'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07311000474',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-11-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502213H0'
    AND inventory.lot_number = '232073'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401020756',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-01-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12330756'
    AND inventory.expiry_date = '2026-09-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401020756',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-01-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12330756'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402016662',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '230921'
    AND inventory.expiry_date = '2026-09-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402016662',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '230921'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402017324',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '234041'
    AND inventory.expiry_date = '2026-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402017324',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '234041'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402017324',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232075'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402017324',
  facility_name = '三宿病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232075'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410014306',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0452009500'
    AND inventory.lot_number = '59357'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410014306',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-10-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0452009500'
    AND inventory.lot_number = '59357'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304015161',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P3A1909'
    AND inventory.expiry_date = '2026-03-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304015161',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P3A1909'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304015161',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P3A1910'
    AND inventory.expiry_date = '2026-03-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304015161',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P3A1910'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304019443',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212020900'
    AND inventory.lot_number = '7P3C0713'
    AND inventory.expiry_date = '2026-03-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304019443',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212020900'
    AND inventory.lot_number = '7P3C0713'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304019443',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212020900'
    AND inventory.lot_number = '7P3C0714'
    AND inventory.expiry_date = '2026-03-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61304019443',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2023-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212020900'
    AND inventory.lot_number = '7P3C0714'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026091',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P4J1102'
    AND inventory.expiry_date = '2027-12-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026091',
  facility_name = '都立　駒込病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021000'
    AND inventory.lot_number = '7P4J1102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02016320',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244050'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02016320',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244050'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403001129',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3H2407'
    AND inventory.expiry_date = '2026-09-15'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403001129',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3H2407'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403012244',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3F0614'
    AND inventory.expiry_date = '2026-06-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403012244',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-03-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3F0614'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404023665',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4C1101'
    AND inventory.expiry_date = '2027-04-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404023665',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4C1101'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405008453',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-05-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3K2106'
    AND inventory.expiry_date = '2027-01-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405008453',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-05-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3K2106'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405012887',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-05-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3K2108'
    AND inventory.expiry_date = '2027-01-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405012887',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-05-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3K2108'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412005274',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0515'
    AND inventory.expiry_date = '2027-08-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412005274',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2024-12-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G0515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02021610',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G3118'
    AND inventory.expiry_date = '2027-11-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02021610',
  facility_name = '池上総合病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4G3118'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010830',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010830',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010830',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010830',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026785',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '251116'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026785',
  facility_name = '東邦大学医療センター　大森病院',
  responsible_person = '藤江　尚樹',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '251116'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000641',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250211900'
    AND inventory.lot_number = '241032'
    AND inventory.expiry_date = '2027-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000641',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250211900'
    AND inventory.lot_number = '241032'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330500'
    AND inventory.lot_number = '24446'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330500'
    AND inventory.lot_number = '24446'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330600'
    AND inventory.lot_number = '24447'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330600'
    AND inventory.lot_number = '24447'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330700'
    AND inventory.lot_number = '24392'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000512',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200330700'
    AND inventory.lot_number = '24392'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001000',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200208700'
    AND inventory.lot_number = '24735'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001000',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200208700'
    AND inventory.lot_number = '24735'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001000',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200208600'
    AND inventory.lot_number = '24807'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001000',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0200208600'
    AND inventory.lot_number = '24807'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027218',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0235100600'
    AND inventory.lot_number = '22647'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027218',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0235100600'
    AND inventory.lot_number = '22647'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000493',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '224008'
    AND inventory.expiry_date = '2025-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000493',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '224008'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000493',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '223084'
    AND inventory.expiry_date = '2025-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000493',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '223084'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8248817'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8248817'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8560222'
    AND inventory.expiry_date = '2028-01-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8560222'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250202800'
    AND inventory.lot_number = '223020'
    AND inventory.expiry_date = '2025-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250202800'
    AND inventory.lot_number = '223020'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0082201'
    AND inventory.expiry_date = '2030-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0082201'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250203000'
    AND inventory.lot_number = '223007'
    AND inventory.expiry_date = '2025-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250203000'
    AND inventory.lot_number = '223007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250203200'
    AND inventory.lot_number = '221023'
    AND inventory.expiry_date = '2025-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250203200'
    AND inventory.lot_number = '221023'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9427007'
    AND inventory.expiry_date = '2029-09-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000494',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9427007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000031',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-01-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0334813'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000031',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-01-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0334813'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000283',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805306'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000283',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805306'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000986',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510124'
    AND inventory.expiry_date = '2028-02-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000986',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-03-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510124'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001171',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0923111'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001171',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0923111'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408010545',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-08-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240102200'
    AND inventory.lot_number = '6693113'
    AND inventory.expiry_date = '2026-04-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408010545',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-08-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0240102200'
    AND inventory.lot_number = '6693113'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000179',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.expiry_date = '2028-02-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04000179',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12510123'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000495',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230099900'
    AND inventory.lot_number = '-'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000495',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230099900'
    AND inventory.lot_number = '-'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000495',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230099900'
    AND inventory.lot_number = '-'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000495',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0230099900'
    AND inventory.lot_number = '-'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001290',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '222058'
    AND inventory.expiry_date = '2025-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001290',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '222058'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410003850',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-10-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238518703'
    AND inventory.lot_number = '230410.22'
    AND inventory.expiry_date = '2026-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410003850',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-10-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238518703'
    AND inventory.lot_number = '230410.22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410019856',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-10-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '232015'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410019856',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2024-10-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '232015'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02011439',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440529'
    AND inventory.expiry_date = '2028-02-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02011439',
  facility_name = '東京慈恵医大病院',
  responsible_person = '山田　航',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200822H0'
    AND inventory.lot_number = '12440529'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012182',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305200'
    AND inventory.lot_number = '24D'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012182',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305200'
    AND inventory.lot_number = '24D'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012182',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305300'
    AND inventory.lot_number = '23G'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409012182',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305300'
    AND inventory.lot_number = '23G'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005448',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23K'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005448',
  facility_name = '都立　小児総合医療Ｃ',
  responsible_person = '山田　航',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23K'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005732',
  facility_name = '東京ハートリズムクリニック',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12440517'
    AND inventory.expiry_date = '2028-02-03'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005732',
  facility_name = '東京ハートリズムクリニック',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12440517'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004995',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251017'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004995',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251017'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04005293',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A1408'
    AND inventory.expiry_date = '2028-02-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04005293',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A1408'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007513',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244131'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007513',
  facility_name = '関東中央病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '244131'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12321249'
    AND inventory.expiry_date = '2026-07-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '03200815H0'
    AND inventory.lot_number = '12321249'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215000'
    AND inventory.lot_number = '244068'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215000'
    AND inventory.lot_number = '244068'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215800'
    AND inventory.lot_number = '233071'
    AND inventory.expiry_date = '2026-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215800'
    AND inventory.lot_number = '233071'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215800'
    AND inventory.lot_number = '234100'
    AND inventory.expiry_date = '2026-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000681',
  facility_name = '日赤医療センタ－',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0250215800'
    AND inventory.lot_number = '234100'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04005796',
  facility_name = '牧田総合病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0043048100'
    AND inventory.lot_number = '244715'
    AND inventory.expiry_date = '2027-12-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04005796',
  facility_name = '牧田総合病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0043048100'
    AND inventory.lot_number = '244715'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04019819',
  facility_name = '代官山バースクリニック',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305200'
    AND inventory.lot_number = '25B'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04019819',
  facility_name = '代官山バースクリニック',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0120305200'
    AND inventory.lot_number = '25B'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238000701'
    AND inventory.lot_number = '242006'
    AND inventory.expiry_date = '2026-04-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238000701'
    AND inventory.lot_number = '242006'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238000601'
    AND inventory.lot_number = '241052'
    AND inventory.expiry_date = '2026-03-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238000601'
    AND inventory.lot_number = '241052'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238010401'
    AND inventory.lot_number = '242038'
    AND inventory.expiry_date = '2026-05-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000405',
  facility_name = '東邦大学医療センター大橋病院',
  responsible_person = '片桐　日南多',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0703'
    AND p.product_code = '0238010401'
    AND inventory.lot_number = '242038'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000291',
  facility_name = '東京医科大　八王子医療センター',
  responsible_person = '菊池　義大',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0581514'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000291',
  facility_name = '東京医科大　八王子医療センター',
  responsible_person = '菊池　義大',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0581514'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0250508'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0250508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9821022'
    AND inventory.expiry_date = '2029-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9821022'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0327402'
    AND inventory.expiry_date = '2030-05-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0327402'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0266511'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0266511'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9796012'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9796012'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0548504'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000664',
  facility_name = '東京科学大学病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0548504'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000276',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4F1007'
    AND inventory.expiry_date = '2027-06-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000276',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4F1007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000283',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4J2202'
    AND inventory.expiry_date = '2027-11-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000283',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4J2202'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04006467',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4D2518'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04006467',
  facility_name = '都立　多摩南部地域病院',
  responsible_person = '贄田　高典',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212021600'
    AND inventory.lot_number = 'S7P4D2518'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403001740',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-03-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079808'
    AND inventory.expiry_date = '2027-02-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403001740',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-03-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8079808'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07405000126',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-05-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9127725'
    AND inventory.expiry_date = '2028-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07405000126',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-05-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9127725'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07406000248',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-06-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9298229'
    AND inventory.expiry_date = '2029-03-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07406000248',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-06-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9298229'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07407000650',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-07-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9010610'
    AND inventory.expiry_date = '2029-05-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07407000650',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-07-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9010610'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000005',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9804508'
    AND inventory.expiry_date = '2029-09-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000005',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9804508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000180',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9820725'
    AND inventory.expiry_date = '2029-09-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000180',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9820725'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000611',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0384814'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000611',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0384814'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000557',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8181921'
    AND inventory.expiry_date = '2027-04-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000557',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8181921'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000006',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8258913'
    AND inventory.expiry_date = '2027-08-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000006',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8258913'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000621',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759211'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000621',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759211'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000041',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0509310'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000041',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0509310'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000041',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0363914'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000041',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0363914'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001150',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0751516'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001150',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0751516'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001500',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0824909'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001500',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0824909'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A04000868',
  facility_name = '武蔵野会　一橋病院（小平市）',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '3900457700'
    AND inventory.lot_number = '2501024NTT'
    AND inventory.expiry_date = '2027-03-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A04000868',
  facility_name = '武蔵野会　一橋病院（小平市）',
  responsible_person = '塚本　怜生',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '3900457700'
    AND inventory.lot_number = '2501024NTT'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002522',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250213700'
    AND inventory.lot_number = '243029'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002522',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250213700'
    AND inventory.lot_number = '243029'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405010238',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241012'
    AND inventory.expiry_date = '2026-03-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405010238',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241012'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001706',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '243010'
    AND inventory.expiry_date = '2026-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409001706',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-09-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '243010'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002097',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '242010'
    AND inventory.expiry_date = '2026-08-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002097',
  facility_name = '榊原記念病院',
  responsible_person = '塚本　怜生',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '242010'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61310018427',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-10-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '232044'
    AND inventory.expiry_date = '2026-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61310018427',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-10-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502210H0'
    AND inventory.lot_number = '232044'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61311014683',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-11-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232074'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61311014683',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-11-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '232074'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312006368',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-12-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '232146'
    AND inventory.expiry_date = '2026-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312006368',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2023-12-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '232146'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405020712',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-05-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '240214P'
    AND inventory.expiry_date = '2026-02-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61405020712',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-05-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '240214P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022785',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '241189'
    AND inventory.expiry_date = '2027-03-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022785',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502211H0'
    AND inventory.lot_number = '241189'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022785',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '241075'
    AND inventory.expiry_date = '2027-02-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022785',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502214H0'
    AND inventory.lot_number = '241075'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407027544',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241170'
    AND inventory.expiry_date = '2027-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407027544',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502216H0'
    AND inventory.lot_number = '241170'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02024505',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244044'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02024505',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244044'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005805',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251042'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03005805',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251042'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025181',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244114'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025181',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '244114'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025181',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251016'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025181',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251016'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004685',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23K'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04004685',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23K'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016428',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0461908200'
    AND inventory.lot_number = '2097032306001'
    AND inventory.expiry_date = '2026-06-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016428',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0461908200'
    AND inventory.lot_number = '2097032306001'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020073',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251044'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020073',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502212H0'
    AND inventory.lot_number = '251044'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020073',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251019'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020073',
  facility_name = '災害医療センター',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502215H0'
    AND inventory.lot_number = '251019'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007145',
  facility_name = '武蔵村山病院',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0120200300'
    AND inventory.lot_number = '24L'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007145',
  facility_name = '武蔵村山病院',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0120200300'
    AND inventory.lot_number = '24L'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C0701'
    AND inventory.expiry_date = '2027-04-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4C0701'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4C1209'
    AND inventory.expiry_date = '2027-04-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4C1209'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C2602'
    AND inventory.expiry_date = '2027-05-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407009388',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C2602'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020615',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0120304000'
    AND inventory.lot_number = '20F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020615',
  facility_name = '東京医科大学病院',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0120304000'
    AND inventory.lot_number = '20F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000960',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8167426'
    AND inventory.expiry_date = '2027-09-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07304000960',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2023-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8167426'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000532',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250217500'
    AND inventory.lot_number = '243055'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000532',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250217500'
    AND inventory.lot_number = '243055'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61307021429',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2023-07-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9374502'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61307021429',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2023-07-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9374502'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407002678',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '7630508'
    AND inventory.expiry_date = '2026-04-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407002678',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '7630508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407002729',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02302202H0'
    AND inventory.lot_number = '240411W'
    AND inventory.expiry_date = '2026-04-15'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407002729',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-07-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02302202H0'
    AND inventory.lot_number = '240411W'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409013331',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0363820'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409013331',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0363820'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409018375',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-09-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335508'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409018375',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-09-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412026755',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200600'
    AND inventory.lot_number = '243046'
    AND inventory.expiry_date = '2027-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412026755',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200600'
    AND inventory.lot_number = '243046'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412026755',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200700'
    AND inventory.lot_number = '243076'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412026755',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2024-12-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200700'
    AND inventory.lot_number = '243076'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200600'
    AND inventory.lot_number = '243087'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200600'
    AND inventory.lot_number = '243087'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200700'
    AND inventory.lot_number = '243082'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250200700'
    AND inventory.lot_number = '243082'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '244009'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '244009'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.expiry_date = '2027-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502274H0'
    AND inventory.lot_number = '242155'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243043'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502275H0'
    AND inventory.lot_number = '243043'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '243175'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250207400'
    AND inventory.lot_number = '243016'
    AND inventory.expiry_date = '2027-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250207400'
    AND inventory.lot_number = '243016'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250209900'
    AND inventory.lot_number = '243008'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250209900'
    AND inventory.lot_number = '243008'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250210000'
    AND inventory.lot_number = '244005'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250210000'
    AND inventory.lot_number = '244005'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250210100'
    AND inventory.lot_number = '244004'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501017036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250210100'
    AND inventory.lot_number = '244004'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501019360',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250227200'
    AND inventory.lot_number = '244003'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501019360',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-01-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250227200'
    AND inventory.lot_number = '244003'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02005180',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02005180',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502276H0'
    AND inventory.lot_number = '243172'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012536',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02300212H0'
    AND inventory.lot_number = '240918W'
    AND inventory.expiry_date = '2026-09-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012536',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-02-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02300212H0'
    AND inventory.lot_number = '240918W'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004090',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0934517'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004090',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0934517'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004124',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '251015'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004124',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '251015'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004124',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202100'
    AND inventory.lot_number = '244012'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03004124',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202100'
    AND inventory.lot_number = '244012'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '251047'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '251047'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251049'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '251049'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251056'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03007670',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251056'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03021222',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '244147'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03021222',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502261H0'
    AND inventory.lot_number = '244147'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250206200'
    AND inventory.lot_number = '244016'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022036',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250206200'
    AND inventory.lot_number = '244016'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003518',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244057'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003518',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244057'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003518',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244058'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003518',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '02502277H0'
    AND inventory.lot_number = '244058'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '251015'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '251015'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '231088'
    AND inventory.expiry_date = '2026-03-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202000'
    AND inventory.lot_number = '231088'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202100'
    AND inventory.lot_number = '244073'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250202100'
    AND inventory.lot_number = '244073'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '251016'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016859',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250201200'
    AND inventory.lot_number = '251016'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016964',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250206200'
    AND inventory.lot_number = '251007'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04016964',
  facility_name = '杏林大',
  responsible_person = '高橋　健児',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0704'
    AND p.product_code = '0250206200'
    AND inventory.lot_number = '251007'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07204000467',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2022-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7763127'
    AND inventory.expiry_date = '2026-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07204000467',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2022-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '7763127'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07204000467',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2022-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '7888713'
    AND inventory.expiry_date = '2026-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07204000467',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2022-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '7888713'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001165',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0270206'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02001165',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-02-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0270206'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000486',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0090514'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000486',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0090514'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013271',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0113213'
    AND inventory.expiry_date = '2030-04-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013271',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0113213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013271',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759508'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013271',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759508'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A04000499',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2501018NTT'
    AND inventory.expiry_date = '2027-03-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A04000499',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2501018NTT'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401012255',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-01-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P3K2902'
    AND inventory.expiry_date = '2026-12-19'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401012255',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-01-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P3K2902'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404022031',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4A0916'
    AND inventory.expiry_date = '2027-02-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404022031',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4A0916'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013641',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4B1413'
    AND inventory.expiry_date = '2027-03-15'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013641',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4B1413'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406020036',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4B2704'
    AND inventory.expiry_date = '2027-03-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406020036',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4B2704'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410026817',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G1906'
    AND inventory.expiry_date = '2027-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410026817',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G1906'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003740',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3F0814'
    AND inventory.expiry_date = '2026-06-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003740',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3F0814'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003740',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3L0615'
    AND inventory.expiry_date = '2027-01-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411003740',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3L0615'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501012659',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0407'
    AND inventory.expiry_date = '2027-11-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501012659',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4J0407'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02016138',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-02-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4K2107'
    AND inventory.expiry_date = '2028-01-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02016138',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-02-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4K2107'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009182',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A1409'
    AND inventory.expiry_date = '2028-02-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009182',
  facility_name = '船橋医療センター',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P5A1409'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000335',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0934604'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000335',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0934604'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61302000680',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2023-02-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8347505'
    AND inventory.expiry_date = '2028-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61302000680',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2023-02-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '8347505'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402004094',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9796202'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402004094',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-02-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9796202'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403019338',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7573405'
    AND inventory.expiry_date = '2026-06-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403019338',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-03-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '7573405'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013268',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8070903'
    AND inventory.expiry_date = '2027-02-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406013268',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-06-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8070903'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7821806'
    AND inventory.expiry_date = '2027-12-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7821806'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7822619'
    AND inventory.expiry_date = '2027-12-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7822619'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8497609'
    AND inventory.expiry_date = '2028-05-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8497609'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8552217'
    AND inventory.expiry_date = '2028-05-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8552217'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8539909'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8539909'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8540006'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8540006'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8540204'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410000676',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-10-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8540204'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016318',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546409'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016318',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546409'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03008363',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0853515'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03008363',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0853515'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022635',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0857924'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03022635',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0857924'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03023894',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0770701'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03023894',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = 'A0770701'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04002444',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0875501'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04002444',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0875501'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04006266',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0825704'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04006266',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0825704'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015633',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8090116'
    AND inventory.expiry_date = '2028-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015633',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8090116'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8100324'
    AND inventory.expiry_date = '2027-06-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8100324'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0890105'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0890105'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9747116'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9747116'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A1082108'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A1082108'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1079402'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1079402'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9810101'
    AND inventory.expiry_date = '2029-09-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9810101'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0925503'
    AND inventory.expiry_date = '2031-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024336',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0925503'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024337',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1079405'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04024337',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A1079405'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7855913'
    AND inventory.expiry_date = '2028-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101200'
    AND inventory.lot_number = '7855913'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8793505'
    AND inventory.expiry_date = '2028-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101300'
    AND inventory.lot_number = '8793505'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8381804'
    AND inventory.expiry_date = '2028-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025087',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101400'
    AND inventory.lot_number = '8381804'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027250',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1067112'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04027250',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A1067112'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013369',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250227000'
    AND inventory.lot_number = '243030'
    AND inventory.expiry_date = '2027-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013369',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250227000'
    AND inventory.lot_number = '243030'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013369',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250227100'
    AND inventory.lot_number = '233002'
    AND inventory.expiry_date = '2026-06-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501013369',
  facility_name = '誠馨会　新東京病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-01-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250227100'
    AND inventory.lot_number = '233002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03024956',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452029100'
    AND inventory.lot_number = '50581'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03024956',
  facility_name = '千葉西総合病院',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452029100'
    AND inventory.lot_number = '50581'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409004758',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200200'
    AND inventory.lot_number = '24A'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409004758',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-09-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200200'
    AND inventory.lot_number = '24A'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62412000154',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-12-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2409012NTT'
    AND inventory.expiry_date = '2026-11-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62412000154',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2024-12-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2409012NTT'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A03001013',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2501008NTT'
    AND inventory.expiry_date = '2027-02-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B62A03001013',
  facility_name = '船橋整形外科',
  responsible_person = '柳澤　一暢',
  shipment_date = '2025-03-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900457600'
    AND inventory.lot_number = '2501008NTT'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04011564',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204100'
    AND inventory.lot_number = 'SIF0223F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04011564',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204100'
    AND inventory.lot_number = 'SIF0223F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410010382',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2024-10-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4E1615'
    AND inventory.expiry_date = '2027-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410010382',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2024-10-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P4E1615'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022247',
  facility_name = '女子医大八千代医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502263H0'
    AND inventory.lot_number = '242013'
    AND inventory.expiry_date = '2027-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406022247',
  facility_name = '女子医大八千代医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502263H0'
    AND inventory.lot_number = '242013'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000029',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805312'
    AND inventory.expiry_date = '2030-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000029',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0805312'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000092',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8498804'
    AND inventory.expiry_date = '2027-12-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000092',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '8498804'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305008117',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9127729'
    AND inventory.expiry_date = '2028-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305008117',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9127729'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305008117',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9297613'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61305008117',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-05-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9297613'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403009564',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9817913'
    AND inventory.expiry_date = '2029-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403009564',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9817913'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501021894',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-01-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230003000'
    AND inventory.lot_number = '241101C'
    AND inventory.expiry_date = '2026-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501021894',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-01-29'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230003000'
    AND inventory.lot_number = '241101C'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029365',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251062'
    AND inventory.expiry_date = '2027-04-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029365',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251062'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000663',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9033123'
    AND inventory.expiry_date = '2028-09-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000663',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-09-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9033123'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000802',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-09-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0100806'
    AND inventory.expiry_date = '2030-02-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07409000802',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-09-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = 'A0100806'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000580',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0721708'
    AND inventory.expiry_date = '2030-10-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03000580',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-11'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0721708'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001347',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0828328'
    AND inventory.expiry_date = '2031-02-26'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001347',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = 'A0828328'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001347',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = 'A0324316'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04001347',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = 'A0324316'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105005823',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2021-05-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8002426'
    AND inventory.expiry_date = '2027-01-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105005823',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2021-05-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '8002426'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105015060',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2021-05-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '7630314'
    AND inventory.expiry_date = '2026-06-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61105015060',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2021-05-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '7630314'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016317',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546223'
    AND inventory.expiry_date = '2030-08-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016317',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = 'A0546223'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '232001'
    AND inventory.expiry_date = '2026-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '232001'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244027'
    AND inventory.expiry_date = '2027-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244027'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '234094'
    AND inventory.expiry_date = '2027-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '234094'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '233065'
    AND inventory.expiry_date = '2026-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '233065'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244153'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244153'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '243169'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '243169'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '244157'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '244157'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '244168'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '244168'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '251028'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A03001572',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-31'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '251028'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025162',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '251104'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025162',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502259H0'
    AND inventory.lot_number = '251104'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025162',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251071'
    AND inventory.expiry_date = '2028-01-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03025162',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502262H0'
    AND inventory.lot_number = '251071'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04008902',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244165'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04008902',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244165'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04008902',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244169'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04008902',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502265H0'
    AND inventory.lot_number = '244169'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015453',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244166'
    AND inventory.expiry_date = '2027-12-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015453',
  facility_name = '帝京大ちば総合医療Ｃ',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '244166'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000286',
  facility_name = '千葉県こども病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '220711'
    AND inventory.expiry_date = '2024-07-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000286',
  facility_name = '千葉県こども病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-03-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '220711'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9457406'
    AND inventory.expiry_date = '2029-05-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = '9457406'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8374109'
    AND inventory.expiry_date = '2027-08-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240101100'
    AND inventory.lot_number = '8374109'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240110600'
    AND inventory.lot_number = '510094708'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240110600'
    AND inventory.lot_number = '510094708'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240110700'
    AND inventory.lot_number = '230287641'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61308001397',
  facility_name = '千葉県救急医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-08-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240110700'
    AND inventory.lot_number = '230287641'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303007602',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0043046100'
    AND inventory.lot_number = '223321'
    AND inventory.expiry_date = '2025-09-18'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303007602',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0043046100'
    AND inventory.lot_number = '223321'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02019042',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200824H0'
    AND inventory.lot_number = '240726'
    AND inventory.expiry_date = '2027-07-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02019042',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200824H0'
    AND inventory.lot_number = '240726'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02019042',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200824H0'
    AND inventory.lot_number = '241002'
    AND inventory.expiry_date = '2027-10-02'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02019042',
  facility_name = '海浜病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-02-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200824H0'
    AND inventory.lot_number = '241002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312001078',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-12-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23C'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61312001078',
  facility_name = '亀田総合病院',
  responsible_person = '田上　剛',
  shipment_date = '2023-12-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0208005300'
    AND inventory.lot_number = '23C'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303013745',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3A0609'
    AND inventory.expiry_date = '2026-02-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303013745',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3A0609'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303013745',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3A0608'
    AND inventory.expiry_date = '2026-02-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303013745',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3A0608'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303017128',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3B0201'
    AND inventory.expiry_date = '2026-03-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61303017128',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2023-03-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3B0201'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401002180',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2024-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3J0413'
    AND inventory.expiry_date = '2026-10-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61401002180',
  facility_name = '千葉医療',
  responsible_person = '田上　剛',
  shipment_date = '2024-01-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212021500'
    AND inventory.lot_number = 'S7P3J0413'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020958',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251056'
    AND inventory.expiry_date = '2027-04-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04020958',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251056'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029556',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251062'
    AND inventory.expiry_date = '2027-04-12'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04029556',
  facility_name = '千葉ろうさい病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-04-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02025235H0'
    AND inventory.lot_number = '251062'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406003740',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230012700'
    AND inventory.lot_number = '230731P'
    AND inventory.expiry_date = '2025-07-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406003740',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230012700'
    AND inventory.lot_number = '230731P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406003740',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230012700'
    AND inventory.lot_number = '230815P'
    AND inventory.expiry_date = '2025-08-15'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406003740',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2024-06-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230012700'
    AND inventory.lot_number = '230815P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIN1124FT1'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIN1124FT1'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452023000'
    AND inventory.lot_number = '59107'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452023000'
    AND inventory.lot_number = '59107'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024300'
    AND inventory.lot_number = '58262'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024300'
    AND inventory.lot_number = '58262'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024500'
    AND inventory.lot_number = '58294'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024500'
    AND inventory.lot_number = '58294'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024600'
    AND inventory.lot_number = '56461'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452024600'
    AND inventory.lot_number = '56461'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821700'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821700'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821400'
    AND inventory.lot_number = 'SID1220F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821400'
    AND inventory.lot_number = 'SID1220F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451824100'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451824100'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451825800'
    AND inventory.lot_number = 'SIM0321F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451825800'
    AND inventory.lot_number = 'SIM0321F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451823800'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451823800'
    AND inventory.lot_number = 'SIN1122F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450210700'
    AND inventory.lot_number = '59272'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450210700'
    AND inventory.lot_number = '59272'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451820000'
    AND inventory.lot_number = '54383'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451820000'
    AND inventory.lot_number = '54383'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451400300'
    AND inventory.lot_number = '59315'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451400300'
    AND inventory.lot_number = '59315'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450210700'
    AND inventory.lot_number = '59272'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450210700'
    AND inventory.lot_number = '59272'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452008100'
    AND inventory.lot_number = '58844'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452008100'
    AND inventory.lot_number = '58844'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452008000'
    AND inventory.lot_number = '59738'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452008000'
    AND inventory.lot_number = '59738'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451603000'
    AND inventory.lot_number = '50744'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451603000'
    AND inventory.lot_number = '50744'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452021100'
    AND inventory.lot_number = '60061'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452021100'
    AND inventory.lot_number = '60061'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451400300'
    AND inventory.lot_number = '59315'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03019316',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451400300'
    AND inventory.lot_number = '59315'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452406700'
    AND inventory.lot_number = '59268'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0452406700'
    AND inventory.lot_number = '59268'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450000400'
    AND inventory.lot_number = '60013'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0450000400'
    AND inventory.lot_number = '60013'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821700'
    AND inventory.lot_number = 'SIJ0623F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821700'
    AND inventory.lot_number = 'SIJ0623F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821400'
    AND inventory.lot_number = 'SID1220F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020766',
  facility_name = '*上野の森どうぶつ病院',
  responsible_person = '田上　剛',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451821400'
    AND inventory.lot_number = 'SID1220F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02017826',
  facility_name = '順天堂浦安病院',
  responsible_person = '堀越　拓',
  shipment_date = '2025-02-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200600'
    AND inventory.lot_number = '25A'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02017826',
  facility_name = '順天堂浦安病院',
  responsible_person = '堀越　拓',
  shipment_date = '2025-02-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200600'
    AND inventory.lot_number = '25A'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402015967',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-02-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9674820'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61402015967',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-02-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103100'
    AND inventory.lot_number = '9674820'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403023264',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9365720'
    AND inventory.expiry_date = '2029-03-08'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61403023264',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-03-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103300'
    AND inventory.lot_number = '9365720'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9314020'
    AND inventory.expiry_date = '2029-05-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103200'
    AND inventory.lot_number = '9314020'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9804504'
    AND inventory.expiry_date = '2029-09-21'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103400'
    AND inventory.lot_number = '9804504'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759512'
    AND inventory.expiry_date = '2029-09-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61404003271',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240103500'
    AND inventory.lot_number = '9759512'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409015503',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-09-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335414'
    AND inventory.expiry_date = '2030-06-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409015503',
  facility_name = '東邦大学医療センター　佐倉病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-09-19'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0240104100'
    AND inventory.lot_number = 'A0335414'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406021861',
  facility_name = '順天堂浦安病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240507P'
    AND inventory.expiry_date = '2026-05-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61406021861',
  facility_name = '順天堂浦安病院',
  responsible_person = '堀越　拓',
  shipment_date = '2024-06-27'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010600'
    AND inventory.lot_number = '240507P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001133',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212606100'
    AND inventory.lot_number = '25053'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001133',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212606100'
    AND inventory.lot_number = '25053'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001134',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200334100'
    AND inventory.lot_number = '242189'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001134',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200334100'
    AND inventory.lot_number = '242189'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001134',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200334200'
    AND inventory.lot_number = '241189'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001134',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200334200'
    AND inventory.lot_number = '241189'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001135',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200208700'
    AND inventory.lot_number = '24713'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04001135',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0200208700'
    AND inventory.lot_number = '24713'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411002280',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-11-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F0503'
    AND inventory.expiry_date = '2027-07-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411002280',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-11-05'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F0503'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002085',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0311'
    AND inventory.expiry_date = '2027-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501002085',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-07'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0311'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010351',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1302'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010351',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1302'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010351',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K0804'
    AND inventory.expiry_date = '2027-12-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02010351',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-13'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K0804'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03010164',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2414'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03010164',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4D2414'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009201',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L2002'
    AND inventory.expiry_date = '2028-02-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04009201',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-09'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L2002'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04010434',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L2006'
    AND inventory.expiry_date = '2028-02-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04010434',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4L2006'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000700',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3C2213'
    AND inventory.expiry_date = '2026-04-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000700',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3C2213'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001439',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3C0205'
    AND inventory.expiry_date = '2026-03-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001439',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3C0205'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000153',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4E1507'
    AND inventory.expiry_date = '2028-01-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A04000153',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4E1507'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412027936',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0304'
    AND inventory.expiry_date = '2027-11-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412027936',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-26'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J0304'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3G2816'
    AND inventory.expiry_date = '2026-08-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3G2816'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3G1209'
    AND inventory.expiry_date = '2026-08-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3G1209'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3K0916'
    AND inventory.expiry_date = '2026-12-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P3K0916'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I1612'
    AND inventory.expiry_date = '2026-12-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000262',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P3I1612'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412021773',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4I0210'
    AND inventory.expiry_date = '2027-10-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412021773',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4I0210'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412024993',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4I1203'
    AND inventory.expiry_date = '2027-10-28'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412024993',
  facility_name = 'おおたかの森病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4I1203'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002044',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11242053'
    AND inventory.expiry_date = '2026-06-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61410002044',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-10-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11242053'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501015632',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241218'
    AND inventory.expiry_date = '2027-01-06'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501015632',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '241218'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02024460',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244031'
    AND inventory.expiry_date = '2026-12-04'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02024460',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244031'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03010723',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251010'
    AND inventory.expiry_date = '2027-02-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03010723',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251010'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020318',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251021'
    AND inventory.expiry_date = '2027-03-05'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03020318',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-03-24'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0202523600'
    AND inventory.lot_number = '251021'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003187',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244053'
    AND inventory.expiry_date = '2026-12-25'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04003187',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-02'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244053'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04019527',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244059'
    AND inventory.expiry_date = '2027-01-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04019527',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244059'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04023840',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244060'
    AND inventory.expiry_date = '2027-01-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04023840',
  facility_name = '埼玉東部循環器病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-23'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230200000'
    AND inventory.lot_number = '11244060'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407004769',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-07-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C1513'
    AND inventory.expiry_date = '2027-05-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61407004769',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-07-04'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4C1513'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016523',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G2614'
    AND inventory.expiry_date = '2027-08-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411016523',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4G2614'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412009256',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H2102'
    AND inventory.expiry_date = '2027-09-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412009256',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-12-10'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4H2102'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02001030',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J1510'
    AND inventory.expiry_date = '2027-11-23'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02001030',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4J1510'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015964',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P5B1707'
    AND inventory.expiry_date = '2028-03-29'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04015964',
  facility_name = '済生会習志野病院',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P5B1707'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001553',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '220711'
    AND inventory.expiry_date = '2024-07-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001553',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '220711'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001553',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '240315'
    AND inventory.expiry_date = '2027-03-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404001553',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '240315'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55501000503',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '241223'
    AND inventory.expiry_date = '2027-12-22'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55501000503',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2025-01-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '241223'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000030',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '250321'
    AND inventory.expiry_date = '2028-03-20'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B55A04000030',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2025-04-01'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200817H0'
    AND inventory.lot_number = '250321'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409005847',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-09-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421654'
    AND inventory.expiry_date = '2027-07-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409005847',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-09-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421654'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461030200'
    AND inventory.lot_number = '22100547'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461030200'
    AND inventory.lot_number = '22100547'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461056800'
    AND inventory.lot_number = '22203960'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461056800'
    AND inventory.lot_number = '22203960'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461025100'
    AND inventory.lot_number = '22100545'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461025100'
    AND inventory.lot_number = '22100545'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461055100'
    AND inventory.lot_number = '21902418'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461055100'
    AND inventory.lot_number = '21902418'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461058000'
    AND inventory.lot_number = '22104907'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461058000'
    AND inventory.lot_number = '22104907'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461058100'
    AND inventory.lot_number = '22104350'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461058100'
    AND inventory.lot_number = '22104350'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461700600'
    AND inventory.lot_number = '22102234'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461700600'
    AND inventory.lot_number = '22102234'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461054200'
    AND inventory.lot_number = '22105431'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000275',
  facility_name = '君津中央病院',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0461054200'
    AND inventory.lot_number = '22105431'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000280',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900453900'
    AND inventory.lot_number = '2216517964'
    AND inventory.expiry_date = '2027-05-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07404000280',
  facility_name = '千葉ﾒﾃﾞｨｶﾙｾﾝﾀｰ',
  responsible_person = '渥美　智基',
  shipment_date = '2024-04-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '3900453900'
    AND inventory.lot_number = '2216517964'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025663',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120103700'
    AND inventory.lot_number = 'O-7613'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04025663',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120103700'
    AND inventory.lot_number = 'O-7613'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120904500'
    AND inventory.lot_number = '24K'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120904500'
    AND inventory.lot_number = '24K'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200300'
    AND inventory.lot_number = '24L'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120200300'
    AND inventory.lot_number = '24L'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120803400'
    AND inventory.lot_number = '24L'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120803400'
    AND inventory.lot_number = '24L'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25CJ'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120703900'
    AND inventory.lot_number = '25CJ'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120501301'
    AND inventory.lot_number = '24111551'
    AND inventory.expiry_date = '2027-11-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120501301'
    AND inventory.lot_number = '24111551'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120305800'
    AND inventory.lot_number = '24G'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04026741',
  facility_name = 'メンズライフクリニック　千葉・柏院',
  responsible_person = '内田　遥',
  shipment_date = '2025-04-25'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0120305800'
    AND inventory.lot_number = '24G'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '223028'
    AND inventory.expiry_date = '2025-07-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502264H0'
    AND inventory.lot_number = '223028'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '223092'
    AND inventory.expiry_date = '2025-08-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502260H0'
    AND inventory.lot_number = '223092'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '231011'
    AND inventory.expiry_date = '2026-10-10'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0320040400'
    AND inventory.lot_number = '231011'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '233067'
    AND inventory.expiry_date = '2026-10-31'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07403000252',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-03-06'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '02502266H0'
    AND inventory.lot_number = '233067'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000868',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12431790'
    AND inventory.expiry_date = '2027-10-27'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07A02000868',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-18'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12431790'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411012430',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411012430',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-15'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIA0823F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIA0823F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIO1022F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204000'
    AND inventory.lot_number = 'SIO1022F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.expiry_date IS NULL
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61411017639',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-21'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0451204200'
    AND inventory.lot_number = 'SIM0523F'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07411000867',
  facility_name = '千葉大',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250216300'
    AND inventory.lot_number = '242017'
    AND inventory.expiry_date = '2027-04-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07411000867',
  facility_name = '千葉大',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-11-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250216300'
    AND inventory.lot_number = '242017'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02000286',
  facility_name = '千葉大',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250201000'
    AND inventory.lot_number = '244024'
    AND inventory.expiry_date = '2027-09-30'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02000286',
  facility_name = '千葉大',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0250201000'
    AND inventory.lot_number = '244024'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000568',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4I2412'
    AND inventory.expiry_date = '2027-11-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000568',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-17'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4I2412'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000593',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4I1915'
    AND inventory.expiry_date = '2027-11-09'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B07501000593',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-20'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4I1915'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412002472',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-12-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F2008'
    AND inventory.expiry_date = '2027-09-11'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61412002472',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-12-03'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022000'
    AND inventory.lot_number = '8P4F2008'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012185',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J1005'
    AND inventory.expiry_date = '2027-11-01'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012185',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4J1005'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012185',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1305'
    AND inventory.expiry_date = '2027-12-13'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A02012185',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-02-14'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022200'
    AND inventory.lot_number = '8P4K1305'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04021617',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K2611'
    AND inventory.expiry_date = '2028-01-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04021617',
  facility_name = '柏厚生病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-04-22'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0212022100'
    AND inventory.lot_number = '8P4K2611'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408012402',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-08-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '240625'
    AND inventory.expiry_date = '2027-06-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61408012402',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-08-16'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '240625'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409022999',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-09-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421657'
    AND inventory.expiry_date = '2027-07-16'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61409022999',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2024-09-30'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12421657'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501019674',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '241008P'
    AND inventory.expiry_date = '2026-10-07'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61501019674',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-01-28'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '241008P'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03009980',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12510113'
    AND inventory.expiry_date = '2028-02-24'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A03009980',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-03-12'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '03200820H0'
    AND inventory.lot_number = '12510113'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007321',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '241212P'
    AND inventory.expiry_date = '2026-12-14'
    AND inventory.shipment_number IS NULL
);


UPDATE inventory SET 
  shipment_number = 'B61A04007321',
  facility_name = '新松戸中央病院',
  responsible_person = '市川　佳奈',
  shipment_date = '2025-04-08'
WHERE EXISTS (
  SELECT 1 FROM products p, departments d
  WHERE p.id = inventory.product_id 
    AND d.id = inventory.department_id
    AND d.department_code = '0705'
    AND p.product_code = '0230010500'
    AND inventory.lot_number = '241212P'
    AND inventory.shipment_number IS NULL
);