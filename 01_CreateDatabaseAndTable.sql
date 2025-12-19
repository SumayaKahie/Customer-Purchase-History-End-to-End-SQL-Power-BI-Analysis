-- 01_CreateDatabaseAndTable.sql
-- Purpose: Create SQL Server database and main table for Customer Purchase History

-- Step 1: Create database
CREATE DATABASE CustomerPurchaseDB;
GO

-- Step 2: Switch to database
USE CustomerPurchaseDB;
GO

-- Step 3: Create main table
CREATE TABLE CustomerPurchaseHistory (
    CustomerID VARCHAR(10),
    Product VARCHAR(50),
    PurchaseDate DATE,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    CustomerName VARCHAR(50),
    ProductCategory VARCHAR(50),
    PaymentMethod VARCHAR(30),
    ReviewRating INT,
    TotalPrice DECIMAL(10,2)
);
GO

-- Comment: Data types chosen to match business rules
-- Quantity and ReviewRating as INT, Prices as DECIMAL(10,2)
