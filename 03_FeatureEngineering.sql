-- 03_FeatureEngineering.sql
-- Purpose: Add derived columns for better analysis

-- Add PurchaseYear column
ALTER TABLE CustomerPurchaseHistory
ADD PurchaseYear INT;
GO

UPDATE CustomerPurchaseHistory
SET PurchaseYear = YEAR(PurchaseDate);
GO

-- Add PurchaseMonth column
ALTER TABLE CustomerPurchaseHistory
ADD PurchaseMonth VARCHAR(15);
GO

UPDATE CustomerPurchaseHistory
SET PurchaseMonth = DATENAME(MONTH, PurchaseDate);
GO

-- Optional: Add CustomerSpendCategory based on total spend
-- Can create logic later when doing aggregated queries
