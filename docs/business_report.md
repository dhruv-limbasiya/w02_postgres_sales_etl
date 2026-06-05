# Business Analytics Report

## Project Summary

This project built an end-to-end ETL pipeline using Python, Pandas, PostgreSQL, and SQL. Raw sales data from the Global Superstore dataset was cleaned, loaded into PostgreSQL, transformed into a star schema warehouse, and analyzed using SQL.

Warehouse Tables:

* stg_sales
* dim_customer
* dim_product
* dim_date
* fact_sales

---

# Executive Summary

## Total Revenue

Total Revenue Generated:

**12,642,501.91**

SQL:

```sql
SELECT SUM(sales)
FROM fact_sales;
```

---

## Total Profit

Total Profit Generated:

**1,467,457.29**

SQL:

```sql
SELECT SUM(profit)
FROM fact_sales;
```

---

## Total Orders Processed

Orders Loaded:

**51,290**

SQL:

```sql
SELECT COUNT(*)
FROM fact_sales;
```

---

# Business Insights

## Insight 1: Top Customers by Revenue

Top 10 Customers:

| Customer           |   Revenue |
| ------------------ | --------: |
| Tom Ashbrook       | 40,488.07 |
| Tamara Chand       | 37,457.33 |
| Greg Tran          | 35,550.95 |
| Christopher Conant | 35,187.08 |
| Sean Miller        | 35,170.93 |
| Bart Watters       | 32,310.45 |
| Natalie Fritzler   | 31,781.26 |
| Fred Hopkins       | 30,400.67 |
| Jane Waco          | 30,288.45 |
| Hunter Lopez       | 30,243.57 |

Business Impact:

These customers contribute significantly to overall revenue and represent valuable targets for customer retention programs.

---

## Insight 2: Revenue by Category

| Category        |      Revenue |
| --------------- | -----------: |
| Technology      | 5,177,889.70 |
| Furniture       | 4,502,905.60 |
| Office Supplies | 4,172,061.00 |

Business Impact:

Technology is the highest revenue-generating category, accounting for over 40% of total revenue.

---

## Insight 3: Profit by Category

Analysis was performed by aggregating profit across product categories.

Business Impact:

This analysis identifies categories that generate the greatest profitability rather than simply the highest sales volume.

---

## Insight 4: Monthly Revenue Trend

Key Findings:

### Revenue Growth by Year

| Year | Total Revenue |
| ---- | ------------: |
| 2011 |         2.26M |
| 2012 |         2.68M |
| 2013 |         3.61M |
| 2014 |         4.09M |

Highest Revenue Month:

* November 2014
* Revenue: **555,279.03**

Business Impact:

The business demonstrates consistent year-over-year growth with strong sales performance during Q4 periods.

---

## Insight 5: Top Products by Revenue

| Product                                                  |   Revenue |
| -------------------------------------------------------- | --------: |
| Apple Smart Phone, Full Size                             | 86,935.78 |
| Cisco Smart Phone, Full Size                             | 76,441.53 |
| Motorola Smart Phone, Full Size                          | 73,156.30 |
| Nokia Smart Phone, Full Size                             | 71,904.56 |
| Canon imageCLASS 2200 Advanced Copier                    | 61,599.82 |
| Hon Executive Leather Armchair, Adjustable               | 58,193.48 |
| Office Star Executive Leather Armchair, Adjustable       | 51,449.80 |
| Harbour Creations Executive Leather Armchair, Adjustable | 50,121.52 |
| Samsung Smart Phone, Cordless                            | 48,653.46 |
| Nokia Smart Phone, with Caller ID                        | 47,877.79 |

Business Impact:

Smartphones dominate revenue generation, indicating strong demand in the Technology category.

---

# Overall Conclusions

The ETL pipeline successfully transformed raw transactional sales data into an analytics-ready warehouse.

Key findings:

* Generated total revenue of 12.64M
* Generated total profit of 1.47M
* Technology is the highest revenue-generating category
* Revenue increased consistently from 2011 to 2014
* Smartphone products are the strongest revenue drivers
* A small group of customers contributes disproportionately to overall revenue

The warehouse model enables scalable analytics and supports future reporting requirements.
