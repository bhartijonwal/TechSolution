# TechSolution
# TechSolution SQL Sales Analysis

-- Objective

Build a simple retail sales database and run SQL queries to analyze product performance, category revenue, customer behavior, and employee-linked sales outcomes.
A beginner-friendly **SQL portfolio project** that models a small retail business and analyzes sales performance across products, categories, customers, and employees.

-- Project Overview
This repository contains a SQL script that:
- Creates core business tables:

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
- [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/SQL%20schema_and_analysis.sql) — complete schema, sample data, and analysis queries
-- How to Run (Local PostgreSQL)
-- 1) Create a database
```sql
CREATE DATABASE techsolution;
```

-- How to Use
1. Open your PostgreSQL-compatible SQL environment.
2. Run [SQL Analysis (Code)](https://github.com/bhartijonwal/TechSolution/blob/main/SQL%20schema_and_analysis.sql) from top to bottom.
3. Review query outputs to understand sales trends and business metrics.
-- 2) Run script
```bash
psql -U <your_user> -d techsolution -f sql/schema_and_analysis.sql
```

-- Sample Insights Covered
- Top-selling products
- Sales by category
- Products sorted by price
-Validate tables were created

```sql
\dt
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT(*) FROM employees;
SELECT COUNT(*) FROM sales;
```

-- Sample Insights Included

- Top-selling products by quantity

  <img width="210" height="143" alt="image" src="https://github.com/user-attachments/assets/413d1127-4158-48f6-9c87-d2d99bd94106" />


- Revenue by category

  <img width="212" height="122" alt="image" src="https://github.com/user-attachments/assets/c8b74e00-7c1f-4081-9c56-ac2742a95ccf" />


- Product ranking by price

  <img width="338" height="124" alt="image" src="https://github.com/user-attachments/assets/9f6b6380-5b37-4fde-b3ac-ca49e8e5b438" />


- Customers with no purchases

  <img width="398" height="65" alt="image" src="https://github.com/user-attachments/assets/1edd3245-5a1f-48f8-a353-ae901f202382" />


- Quarterly sales summaries

  <img width="196" height="121" alt="image" src="https://github.com/user-attachments/assets/5e6a8a46-97cb-4fa0-9ca8-10f0e8f01088" />


- Employee listing by grade
  
  <img width="363" height="104" alt="image" src="https://github.com/user-attachments/assets/3f06e69e-5dd2-4142-b618-2c6b5750b656" />


-- Portfolio Highlights You Can Mention
- Designed a normalized mini retail schema with foreign keys.
- Built reusable SQL reporting queries for sales KPIs.
- Demonstrated joins, aggregations, grouping, date extraction, CTE usage, and sorting.

-- Known Gaps (Current Version)
> These are normal for a learning project and good to improve next.



