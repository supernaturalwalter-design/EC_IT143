-- Step 4: Create Trigger

CREATE TRIGGER trg_UpdateAudit
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET LastModifiedDate = GETDATE(),
        LastModifiedBy = SUSER_NAME()
    FROM dbo.t_w3_schools_customers c
    JOIN inserted i ON c.ID = i.ID;
END
