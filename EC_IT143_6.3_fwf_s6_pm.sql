-- Step 6: Compare Results

SELECT Name,
       LEFT(Name, CHARINDEX(' ', Name) - 1) AS AdHoc_FirstName,
       dbo.fn_GetFirstName(Name) AS Function_FirstName
FROM dbo.t_w3_schools_customers;
