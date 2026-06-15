-- Step 8: Extract Last Name

CREATE FUNCTION dbo.fn_GetLastName (@FullName VARCHAR(100))
RETURNS VARCHAR(50)
AS
BEGIN
    RETURN RIGHT(@FullName, LEN(@FullName) - CHARINDEX(' ', @FullName));
END;
