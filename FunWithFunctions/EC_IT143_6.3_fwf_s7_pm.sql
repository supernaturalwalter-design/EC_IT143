-- Step 7: Test (Expected = 0 rows)

SELECT *
FROM dbo.t_w3_schools_customers
WHERE LEFT(Name, CHARINDEX(' ', Name) - 1)
<> dbo.fn_GetFirstName(Name);
