# TechSolution
# TechSolution SQL Sales Analysis

-- Objective
Build a simple retail sales database and run SQL queries to analyze product performance, category revenue, customer behavior, and employee-linked sales outcomes.
A beginner-friendly **SQL portfolio project** that models a small retail business and analyzes sales performance across products, categories, customers, and employees.

-- Project Overview
This repository contains a SQL script that:
- Creates core business tables:
- 
- `products`
<img width="407" height="86" alt="image" src="https://github.com/user-attachments/assets/38dc9cca-fbd8-48e4-b313-5b41c1781571" />

-- Project Goal
Build a lightweight PostgreSQL dataset and run practical business queries to answer questions such as:
- Which products are selling the most?
- Which categories generate the most revenue?
- Which customers have not purchased yet?
- How does sales performance look quarter by quarter?

- `customers`
- <img width="545" height="64" alt="image" src="https://github.com/user-attachments/assets/8f4fefe3-8c3e-4ba1-9267-dff2e36d6baa" />
-- Tech Stack
- **Database:** PostgreSQL
- **Language:** SQL
- **Project Type:** Data Analytics / SQL Reporting

- `employees`
- <img width="706" height="64" alt="image" src="https://github.com/user-attachments/assets/c1bf7d68-3dc4-4a8f-9bf7-f0e30019da77" />
-- Repository Structure
```text
.
├── README.md
├── sql/
│   ├── schema_and_analysis.sql        # Primary script (use this one)
│   └── SQL schema_and_analysis.sql    # Legacy duplicate (remove in cleanup)
└── Tech Solution Script.docx          # Source notes/document version
```

- `sales`
<img width="496" height="62" alt="image" src="https://github.com/user-attachments/assets/b2b828c9-f823-473d-9235-dd74f4f4e4ec" />

-What the SQL Script Covers
The main SQL script includes:
1. DD – table creation for:
   - `products`
   - `customers`
   - `employees`
   - `sales`
2. DML – sample data inserts
3. Analytical Queries – 10 reports for sales insights

- Inserts sample data into each table
- Applies basic schema updates
- Runs reporting queries for common sales insights
-- Data Model Overview
- `products` stores item-level catalog and price.
- `customers` stores buyer identity and contact details.
- `employees` stores staff linked to transactions.
- `sales` is the fact table linking product, customer, employee, date, quantity, and amount.

-- Files
- [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/sql/SQL%20schema_and_analysis.sql) — complete schema, sample data, and analysis queries
-- How to Run (Local PostgreSQL)
-- 1) Create a database
```sql
CREATE DATABASE techsolution;
```

-- How to Use
1. Open your PostgreSQL-compatible SQL environment.
2. Run [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/sql/SQL%20schema_and_analysis.sql) from top to bottom.
3. Review query outputs to understand sales trends and business metrics.
-- 2) Run script
```bash
psql -U <your_user> -d techsolution -f sql/schema_and_analysis.sql
```

-- Sample Insights Covered
- Top-selling products
- Sales by category
- Products sorted by price
-- 3) Validate tables were created
```sql
\dt
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM sales;
```

-- Sample Insights Included
- Top-selling products by quantity
- Revenue by category
- Product ranking by price
- Customers with no purchases
- Quarterly sales summaries
- Employee listing by grade

-- Portfolio Highlights You Can Mention
- Designed a normalized mini retail schema with foreign keys.
- Built reusable SQL reporting queries for sales KPIs.
- Demonstrated joins, aggregations, grouping, date extraction, CTE usage, and sorting.

-- Known Gaps (Current Version)
> These are normal for a learning project and good to improve next.

- Duplicate SQL file exists under `sql/`.
- Some SQL statements need cleanup (missing semicolons / insert formatting).
- A few aggregations can be improved for correct quarterly rollups.
- Validation constraints (`NOT NULL`, `CHECK`) can be strengthened.
-
--  Recommended Next Improvements
1. Keep only one canonical SQL script (`sql/schema_and_analysis.sql`).
2. Add strict constraints and consistent naming conventions.
3. Split into modular scripts:
   - `01_schema.sql`
   - `02_seed.sql`
   - `03_analysis.sql`
4. Add indexes on high-use columns (`sales.productid`, `sales.customerid`, `sales.saledate`).
5. Add output screenshots/charts in a new `output/` folder.
6. Add one advanced report (monthly trend, top 5 customers, repeat customer rate).









# TechSolution
# TechSolution SQL Sales Analysis

## Objective
Build a simple retail sales database and run SQL queries to analyze product performance, category revenue, customer behavior, and employee-linked sales outcomes.

## Project Overview
This repository contains a SQL script that:
- Creates core business tables:
- `products`
  <img width="407" height="86" alt="image" src="https://github.com/user-attachments/assets/38dc9cca-fbd8-48e4-b313-5b41c1781571" />

- `customers`
- <img width="545" height="64" alt="image" src="https://github.com/user-attachments/assets/8f4fefe3-8c3e-4ba1-9267-dff2e36d6baa" />

- `employees`
- <img width="706" height="64" alt="image" src="https://github.com/user-attachments/assets/c1bf7d68-3dc4-4a8f-9bf7-f0e30019da77" />

- `sales`
  <img width="496" height="62" alt="image" src="https://github.com/user-attachments/assets/b2b828c9-f823-473d-9235-dd74f4f4e4ec" />

- Inserts sample data into each table
- Applies basic schema updates
- Runs reporting queries for common sales insights

## Files
- [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/sql/SQL%20schema_and_analysis.sql) — complete schema, sample data, and analysis queries

## How to Use
1. Open your PostgreSQL-compatible SQL environment.
2. Run [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/sql/SQL%20schema_and_analysis.sql) from top to bottom.
3. Review query outputs to understand sales trends and business metrics.

## Sample Insights Covered
- Top-selling products
- Sales by category
- Products sorted by price
- Customers with no purchases
- Quarterly sales summaries
- Employee listing by grade
