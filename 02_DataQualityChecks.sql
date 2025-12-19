-- 02_DataQualityChecks.sql
-- Purpose: Verify data quality before analysis

-- Check for missing values
SELECT
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN CustomerID IS NULL THEN 1 ELSE 0 END) AS MissingCustomerID,
    SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS MissingProduct,
    SUM(CASE WHEN PurchaseDate IS NULL THEN 1 ELSE 0 END) AS MissingPurchaseDate,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS MissingQuantity,
    SUM(CASE WHEN UnitPrice IS NULL THEN 1 ELSE 0 END) AS MissingUnitPrice,
    SUM(CASE WHEN TotalPrice IS NULL THEN 1 ELSE 0 END) AS MissingTotalPrice
FROM CustomerPurchaseHistory;

-- Check for invalid quantities
SELECT *
FROM CustomerPurchaseHistory
WHERE Quantity <= 0;

-- Check for invalid prices
SELECT *
FROM CustomerPurchaseHistory
WHERE UnitPrice < 0 OR TotalPrice < 0;

-- Verify TotalPrice = Quantity * UnitPrice
SELECT
    CustomerID,
    Product,
    Quantity,
    UnitPrice,
    TotalPrice,
    (Quantity * UnitPrice) AS CalculatedTotal
FROM CustomerPurchaseHistory
WHERE ABS(TotalPrice - (Quantity * UnitPrice)) > 0.01;
