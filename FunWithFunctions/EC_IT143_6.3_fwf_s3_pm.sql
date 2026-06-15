-- Step 3: Ad Hoc Query

SELECT Name,
       LEFT(Name, CHARINDEX(' ', Name) - 1) AS FirstName
FROM dbo.t_w3_schools_customers;
