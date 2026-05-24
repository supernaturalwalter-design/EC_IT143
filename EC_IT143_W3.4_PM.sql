/*
File Name: EC_IT143_W3.4_PM.sql
Author: Pedzisai Machisvo
Date: 2026-05-25
Purpose: SQL script answering 8 AdventureWorks questions
Estimated Runtime: < 1 minute
*/

USE AdventureWorks2022;
GO

/* 
Q1 - Marginal Complexity
Author: Self
Question: What are the top ten most expensive products by list price?
*/
SELECT TOP 10 
    Name,
    ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;
GO

/*
Q2 - Marginal Complexity
Author: Classmate
Question: Which employees have the highest vacation hours remaining?
*/
SELECT 
    BusinessEntityID,
    VacationHours
FROM HumanResources.Employee
ORDER BY VacationHours DESC;
GO

/*
Q3 - Moderate Complexity
Author: Classmate
Question: Which five product categories generated the highest total sales revenue?
*/
SELECT TOP 5
    pc.Name AS Category,
    SUM(sod.LineTotal) AS TotalRevenue
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
JOIN Production.ProductCategory pc ON ps.ProductCategoryID = pc.ProductCategoryID
GROUP BY pc.Name
ORDER BY TotalRevenue DESC;
GO

/*
Q4 - Moderate Complexity
Author: Classmate
Question: Identify customers who placed more than five orders in 2013 with their total spending.
*/
SELECT 
    soh.CustomerID,
    COUNT(soh.SalesOrderID) AS OrderCount,
    SUM(soh.TotalDue) AS TotalSpent
FROM Sales.SalesOrderHeader soh
WHERE YEAR(soh.OrderDate) = 2013
GROUP BY soh.CustomerID
HAVING COUNT(soh.SalesOrderID) > 5
ORDER BY TotalSpent DESC;
GO

/*
Q5 - Increased Complexity
Author: Self
Question: Monthly road bike sales for 2012 with quantity, average price, and estimated profit.
*/
SELECT 
    MONTH(soh.OrderDate) AS OrderMonth,
    SUM(sod.OrderQty) AS TotalQuantity,
    AVG(sod.UnitPrice) AS AvgPrice,
    SUM((sod.UnitPrice - p.StandardCost) * sod.OrderQty) AS EstimatedProfit
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN Production.Product p ON sod.ProductID = p.ProductID
JOIN Production.ProductSubcategory ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE YEAR(soh.OrderDate) = 2012
    AND ps.Name LIKE '%Road%'
GROUP BY MONTH(soh.OrderDate)
ORDER BY OrderMonth;
GO

/*
Q6 - Increased Complexity
Author: Classmate
Question: Yearly sales performance by region including revenue, orders, and average order value.
*/
SELECT 
    st.Name AS Region,
    YEAR(soh.OrderDate) AS SalesYear,
    SUM(soh.TotalDue) AS TotalRevenue,
    COUNT(soh.SalesOrderID) AS TotalOrders,
    AVG(soh.TotalDue) AS AvgOrderValue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name, YEAR(soh.OrderDate)
ORDER BY SalesYear, TotalRevenue DESC;
GO

/*
Q7 - Metadata Question
Author: Classmate
Question: Which tables contain ProductID or CustomerID columns?
*/
SELECT 
    TABLE_NAME,
    COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE COLUMN_NAME IN ('ProductID', 'CustomerID')
ORDER BY TABLE_NAME;
GO

/*
Q8 - Metadata Question
Author: Classmate
Question: List all columns and data types in SalesOrderHeader table.
*/
SELECT 
    COLUMN_NAME,
    DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'SalesOrderHeader'
ORDER BY ORDINAL_POSITION;
GO