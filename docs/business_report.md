# Business Analytics Report

## Project Summary

An end-to-end ETL pipeline was built using Python, Pandas, PostgreSQL, and SQL to transform raw sales data into a dimensional warehouse model for business analytics.

The warehouse consists of:

* stg_sales
* dim_customer
* dim_product
* dim_date
* fact_sales

---

# Executive Summary

## Total Revenue

Revenue generated across all transactions:

**12,642,501.91**

SQL Used:

```sql
SELECT SUM(sales)
FROM fact_sales;
```

---

## Total Profit

Profit generated across all transactions:

**1,467,457.29**

SQL Used:

```sql
SELECT SUM(profit)
FROM fact_sales;
```

---

## Total Orders Processed

Orders loaded into warehouse:

**51,290**

SQL Used:

```sql
SELECT COUNT(*)
FROM fact_sales;
```

---

## Insight 1: Top Customers by Revenue

Business Question:

Which customers generate the highest revenue?

Analysis:

Customer-level revenue aggregation was performed using the customer dimension and sales fact table.

Business Impact:

Helps identify high-value customers for retention and loyalty programs.

---

## Insight 2: Revenue by Product Category

Business Question:

Which product category generates the most revenue?

Analysis:

Revenue was aggregated across:

* Technology
* Furniture
* Office Supplies

Business Impact:

Supports inventory planning and category investment decisions.

---

## Insight 3: Profit by Product Category

Business Question:

Which category contributes the most profit?

Analysis:

Profit was calculated and grouped by category.

Business Impact:

Revenue does not always equal profitability. This analysis identifies the most profitable business segments.

---

## Insight 4: Monthly Revenue Trend

Business Question:

How does revenue change over time?

Analysis:

Revenue was aggregated by:

* Year
* Month

Business Impact:

Helps detect growth trends, seasonality, and business performance over time.

---

## Insight 5: Top Products by Revenue

Business Question:

Which products generate the highest revenue?

Analysis:

Product-level revenue aggregation was performed using product dimensions and sales facts.

Business Impact:

Supports product strategy and sales planning.

---

## Insight 6: Top Products by Profit

Business Question:

Which products generate the highest profit?

Analysis:

Profit aggregation was performed at the product level.

Business Impact:

Highlights products that contribute most to business profitability.

---

# Conclusion

The ETL pipeline successfully transformed raw sales data into an analytics-ready warehouse using a star schema design.

The warehouse enables business users to perform customer, product, profitability, and time-series analysis through SQL-based reporting.
