-- Query 2
SELECT *
FROM Sales.SalesOrderDetail
WHERE CarrierTrackingNumber = '4911-403C-98';
GO

-- Create index
CREATE NONCLUSTERED INDEX IX_Sales_CarrierTrackingNumber
ON Sales.SalesOrderDetail (CarrierTrackingNumber);
GO

-- Re-run query
SELECT *
FROM Sales.SalesOrderDetail
WHERE CarrierTrackingNumber = '4911-403C-98';
GO