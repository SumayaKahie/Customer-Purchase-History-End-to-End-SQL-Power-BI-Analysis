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

# Customer Purchase Trends & Revenue Dashboard Analysis

This interactive dashboard provides a clear view of customer purchasing behaviour, revenue trends, and top-performing products, enabling data-driven business decisions.

<img width="1127" height="655" alt="image" src="https://github.com/user-attachments/assets/3cc831af-e3f5-4dd8-b81e-2eb307b69bb7" />


## Key Insights

### High-Level KPIs
- **Total Revenue:** £3.27M — provides a snapshot of overall sales performance.  
- **Average Order Value:** £1.81K — indicates the typical spend per customer, useful for pricing and upselling strategies.  
- **Total Customers:** 1,642 — shows the customer base size, helping to assess market penetration and retention efforts.  

### Monthly Revenue Trends
Revenue trends over **2023–2025** are visualised, highlighting:
- Seasonal peaks (e.g., May and November)  
- Potential slow months (e.g., April and October)  

Observing these trends allows for:
- Inventory planning  
- Marketing campaign timing  
- Sales forecasting aligned with high-demand periods  

### Top 10 Products by Revenue
Key revenue drivers include:
- **Tablets:** £0.53M  
- **Laptops:** £0.48M  
- **Monitors:** £0.47M  

Insights here inform:
- Product focus  
- Promotional strategies  
- Stock prioritisation  

## Strategic Takeaways for Business Decisions
- **Seasonal Promotions:** May and November show revenue spikes. Planning targeted promotions during these months could maximise revenue.  
- **Product Focus:** High-performing electronics products suggest allocating marketing budget towards these categories to boost ROI.  
- **Customer Insights:** Tracking average order value trends could guide upsell/cross-sell campaigns.  
- **Revenue Growth Opportunities:** Slow months like April and October may benefit from discount campaigns or bundled offers to smooth revenue flow.




