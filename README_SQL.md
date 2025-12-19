# SQL Scripts for Customer Purchase History Project

## 01_CreateDatabaseAndTable.sql
- Creates the database and main table
- Defines appropriate data types

## 02_DataQualityChecks.sql
- Performs NULL checks, invalid value checks
- Validates TotalPrice = Quantity * UnitPrice

## 03_FeatureEngineering.sql
- Adds PurchaseYear and PurchaseMonth columns
- Prepares dataset for time-series analysis

## 04_BusinessAnalysisQueries.sql
- Revenue, top products/customers, trends, AOV
- Answers real business questions

## 05_ViewsAndCTEs.sql
- Creates reusable views
- Prepares clean dataset for Power BI
- Includes example CTE for top customer analysis
