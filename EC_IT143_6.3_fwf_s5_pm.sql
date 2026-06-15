-- Step 5: Create Scalar Function

CREATE FUNCTION dbo.fn_GetFirstName (@FullName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN LEFT(@FullName, CHARINDEX(' ', @FullName) - 1);
END;