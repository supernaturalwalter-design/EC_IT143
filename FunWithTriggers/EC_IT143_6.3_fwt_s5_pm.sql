-- Step 5: Test Trigger

UPDATE dbo.t_w3_schools_customers
SET Name = 'Updated Name'
WHERE ID = 2;

SELECT *
FROM dbo.t_w3_schools_customers;