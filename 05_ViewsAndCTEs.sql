-- 05_ViewsAndCTEs.sql
-- Purpose: Create reusable views and CTEs for analysis and Power BI

-- View: Total Revenue
CREATE VIEW vw_TotalRevenue AS
SELECT SUM(TotalPrice) AS TotalRevenue
FROM CustomerPurchaseHistory;
GO

-- View: Revenue by Product Category
CREATE VIEW vw_RevenueByCategory AS
SELECT ProductCategory, SUM(TotalPrice) AS Revenue
FROM CustomerPurchaseHistory
GROUP BY ProductCategory;
GO

-- View for Power BI: Clean dataset
CREATE VIEW vw_PowerBI_CustomerPurchases AS
SELECT
    CustomerID,
    CustomerName,
    Product,
    ProductCategory,
    Quantity,
    UnitPrice,
    TotalPrice,
    PurchaseDate,
    PurchaseYear,
    PurchaseMonth,
    PaymentMethod,
    ReviewRating
FROM CustomerPurchaseHistory;
GO

-- Example CTE: Top 10 Customers
WITH CustomerSpending AS (
    SELECT CustomerID, CustomerName, SUM(TotalPrice) AS TotalSpent
    FROM CustomerPurchaseHistory
    GROUP BY CustomerID, CustomerName
)
SELECT TOP 10 *
FROM CustomerSpending
ORDER BY TotalSpent DESC;
