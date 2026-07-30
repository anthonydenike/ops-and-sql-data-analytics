# SQL Portfolio — Operational & Revenue Analysis

SQL queries against a retail/e-commerce style relational database — customers, orders, order line items, employees, and a product catalog. Table structure in line with a SaaS billing system, internal sales dashboard, or support ops platform.

Written and tested in DBeaver, developed in GitHub Codespaces.

## Files

- `advanced_queries.sql` — CTEs, running revenue totals, period-over-period comparison, and customer ranking/segmentation using window functions (RANK, ROW_NUMBER, LAG, LEAD, NTILE)
- `customer_analysis.sql` — customer distribution by market, top accounts by lifetime value, average order size by region
- `product_analysis.sql` — revenue by category, top-performing products, pricing analysis, catalog items with zero activity
- `employee_analysis.sql` — team workload distribution, revenue attribution by rep, reporting structure

## Concepts used

Aggregate functions, multi-table JOINs, LEFT JOIN, self JOIN, GROUP BY, string concatenation, CASE logic, CTEs, window functions.
