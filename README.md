# Customer-Purchase-History-End-to-End-SQL-Power-BI-Analysis

## Overview
This project analyses a customer purchase history dataset using **SQL Server**.  
The goal is to demonstrate an end-to-end SQL analytics workflow, including data ingestion, data quality validation, feature engineering, business analysis, and preparation of optimised datasets for business intelligence tools such as Power BI.

## Dataset
- 1,800 rows of customer purchase history
- Columns include CustomerID, Product, Quantity, UnitPrice, TotalPrice, PaymentMethod, ReviewRating, etc.

## Data

| Column          | Breakdown                   |
| --------------- | --------------------------- |
| CustomerID      | Unique ID for each customer |
| Product         | What they bought            |
| PurchaseDate    | When they bought it         |
| Quantity        | How many items              |
| UnitPrice       | Price per item              |
| CustomerName    | Customer name               |
| ProductCategory | Category of product         |
| PaymentMethod   | How they paid               |
| ReviewRating    | Customer rating (1–5)       |
| TotalPrice      | Quantity × UnitPrice        |


## Dataset Source
The dataset was obtained from a publicly available dataset:

- Source: Excel – Sales & Retail Data  
- Link: https://excelx.com/practice-data/sales-retail/

The data is used strictly for educational and portfolio purposes.


## Skills Demonstrated
- SQL Server: database creation, table design, data ingestion
- Data Quality: NULL checks, business logic validation
- Feature Engineering: PurchaseYear, PurchaseMonth
- Business Analysis: total revenue, revenue by category, top products/customers, AOV
- Advanced SQL: CTEs, views for reuse and Power BI integration

## Key Outcomes
- Validated data accuracy before analysis
- Identified revenue drivers by product and category
- Analysed customer spending behavior
- Built reusable SQL views for scalable reporting

## Files
- `Data/` — CSV of cleaned dataset
- `SQL/` — All SQL scripts organised by purpose



