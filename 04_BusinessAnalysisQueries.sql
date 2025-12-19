-- 04_BusinessAnalysisQueries.sql
-- Purpose: Core business analysis queries

-- Total Revenue
SELECT SUM(TotalPrice) AS TotalRevenue
FROM CustomerPurchaseHistory;

-- Revenue by Product Category
SELECT ProductCategory, SUM(TotalPrice) AS Revenue
FROM CustomerPurchaseHistory
GROUP BY ProductCategory
ORDER BY Revenue DESC;

-- Top 10 Products by Revenue
SELECT TOP 10 Product, SUM(TotalPrice) AS ProductRevenue
FROM CustomerPurchaseHistory
GROUP BY Product
ORDER BY ProductRevenue DESC;

-- Top 10 Customers by Spend
SELECT TOP 10 CustomerID, CustomerName, SUM(TotalPrice) AS TotalSpent
FROM CustomerPurchaseHistory
GROUP BY CustomerID, CustomerName
ORDER BY TotalSpent DESC;

-- Average Order Value (AOV)
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM CustomerPurchaseHistory;

-- Monthly Revenue Trend
SELECT PurchaseYear, PurchaseMonth, SUM(TotalPrice) AS MonthlyRevenue
FROM CustomerPurchaseHistory
GROUP BY PurchaseYear, PurchaseMonth
ORDER BY PurchaseYear, MIN(PurchaseDate);
