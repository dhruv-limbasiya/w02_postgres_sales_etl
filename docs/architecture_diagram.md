# Architecture Diagram

## End-to-End ETL Architecture

```text
                    Global Superstore Dataset
                               │
                               ▼

                    +--------------------+
                    |      Extract       |
                    |  Python + Pandas   |
                    +--------------------+
                               │
                               ▼

                    +--------------------+
                    |     Transform      |
                    | Standardize Names  |
                    | Remove Duplicates  |
                    | Data Validation    |
                    | Date Conversion    |
                    +--------------------+
                               │
                               ▼

                    +--------------------+
                    |       Load         |
                    | PostgreSQL         |
                    |    stg_sales       |
                    +--------------------+
                               │
                               ▼

                    +--------------------+
                    | SQL Transformations|
                    +--------------------+
                               │
          ┌────────────────────┼────────────────────┐
          ▼                    ▼                    ▼

 +----------------+  +----------------+  +----------------+
 |  dim_customer  |  |  dim_product   |  |    dim_date    |
 +----------------+  +----------------+  +----------------+
 | customer_id    |  | product_id     |  | order_date     |
 | customer_name  |  | product_name   |  | order_year     |
 | segment        |  | category       |  | order_month    |
 +----------------+  | sub_category   |  | order_day      |
                     +----------------+  | order_quarter  |
                                         +----------------+
          │                    │                    │
          └────────────────────┼────────────────────┘
                               ▼

                    +--------------------+
                    |     fact_sales     |
                    +--------------------+
                    | order_id           |
                    | customer_id        |
                    | product_id         |
                    | order_date         |
                    | sales              |
                    | quantity           |
                    | discount           |
                    | profit             |
                    | shipping_cost      |
                    +--------------------+
                               │
                               ▼

                    +--------------------+
                    | Business Analytics |
                    +--------------------+
                    | Top Customers      |
                    | Revenue Category   |
                    | Profit Category    |
                    | Monthly Trends     |
                    | Top Products       |
                    +--------------------+
```

---

# Data Flow

Raw CSV Data

↓

Python ETL Pipeline

↓

PostgreSQL Staging Layer (`stg_sales`)

↓

Star Schema Warehouse

* dim_customer
* dim_product
* dim_date
* fact_sales

↓

SQL Analytics

↓

Business Insights

---

# Technology Stack

* Python
* Pandas
* PostgreSQL
* SQLAlchemy
* SQL
* Git
* GitHub
* VS Code

---

# Warehouse Model

Star Schema Design

```text
dim_customer
      │
      │
      ▼
   fact_sales
      ▲
      │
dim_product

      ▲
      │
   dim_date
```

Fact Table:

* fact_sales

Dimension Tables:

* dim_customer
* dim_product
* dim_date
