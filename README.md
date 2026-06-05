# W02 PostgreSQL Sales ETL Pipeline

## Project Overview

This project demonstrates an end-to-end Data Engineering ETL pipeline using Python, Pandas, PostgreSQL, and SQL.

The pipeline extracts raw sales data from a CSV file, performs data cleaning and validation using Pandas, loads the cleaned data into PostgreSQL staging tables, builds a dimensional data warehouse using a star schema, and generates business insights through SQL analytics queries.

---

## Business Problem

Organizations receive raw sales data that is not immediately suitable for reporting and analytics.

Common data quality issues include:

* Duplicate records
* Missing values
* Inconsistent column names
* Incorrect data types
* Invalid business records

The objective of this project is to transform raw transactional data into analytics-ready warehouse tables that support business reporting.

---

## Dataset

Dataset: Global Superstore Sales Dataset

### Dataset Statistics

| Metric           | Value         |
| ---------------- | ------------- |
| Total Records    | 51,290        |
| Unique Customers | 1,590         |
| Unique Products  | 10,292        |
| Date Range       | 2011 - 2014   |
| Total Revenue    | 12,642,501.91 |
| Total Profit     | 1,467,457.29  |

---

## Architecture

Raw CSV
↓
Python Extract
↓
Pandas Cleaning & Validation
↓
PostgreSQL Staging Table (stg_sales)
↓
SQL Transformations
↓
Dimension Tables
↓
Fact Table
↓
Business Analytics

---

## Technologies Used

* Python
* Pandas
* PostgreSQL
* SQLAlchemy
* SQL
* VS Code
* Git
* GitHub

---

## Project Structure

```text
w02_postgres_sales_etl/

├── data/
│   ├── raw/
│   └── processed/
│
├── docs/
│   ├── data_assessment.md
│   └── business_report.md
│
├── logs/
│   └── pipeline.log
│
├── sql/
│   ├── staging.sql
│   ├── transformations.sql
│   └── analytics.sql
│
├── src/
│   ├── database.py
│   ├── extract.py
│   ├── transform.py
│   ├── load.py
│   └── main.py
│
├── README.md
└── requirements.txt
```

---

## ETL Pipeline

### Extract

* Read raw CSV data using Pandas
* Load dataset into a DataFrame

### Transform

Performed the following cleaning operations:

* Standardized column names
* Removed duplicate records
* Removed unnecessary columns
* Converted date columns to datetime format
* Validated sales values
* Prepared clean analytics-ready data

### Load

* Connected Python to PostgreSQL using SQLAlchemy
* Loaded cleaned data into PostgreSQL
* Created staging table: `stg_sales`

---

## Data Warehouse Design

### Dimension Tables

#### dim_customer

Stores customer-related information.

Columns:

* customer_id
* customer_name
* segment

---

#### dim_product

Stores product-related information.

Columns:

* product_id
* product_name
* category
* sub_category

---

#### dim_date

Stores date attributes.

Columns:

* order_date
* order_year
* order_month
* order_day
* order_quarter

---

### Fact Table

#### fact_sales

Stores transactional sales metrics.

Columns:

* order_id
* customer_id
* product_id
* order_date
* sales
* quantity
* discount
* profit
* shipping_cost

---

## Analytics Performed

### Total Revenue

```sql
SELECT SUM(sales)
FROM fact_sales;
```

Result:

12,642,501.91

---

### Total Profit

```sql
SELECT SUM(profit)
FROM fact_sales;
```

Result:

1,467,457.29

---

### Additional Analytics

* Top Customers by Revenue
* Revenue by Category
* Profit by Category
* Monthly Revenue Trend
* Top Products by Revenue
* Top Products by Profit

---

## Skills Demonstrated

### Data Engineering

* ETL Pipeline Development
* Data Cleaning and Validation
* Data Modeling
* Star Schema Design
* Data Warehousing Fundamentals

### Python

* Pandas Data Processing
* SQLAlchemy Integration
* Modular Project Structure

### SQL

* Table Creation
* Data Loading
* Joins
* Aggregations
* Group By
* Analytical Queries

### PostgreSQL

* Database Design
* Staging Layer Development
* Warehouse Table Creation

---

## Key Learning Outcomes

* Built a complete ETL pipeline from raw data to analytics
* Connected Python applications to PostgreSQL
* Designed a dimensional data warehouse
* Created fact and dimension tables
* Generated business insights using SQL
* Applied Data Engineering best practices in a real-world project

---

## Future Improvements

* Incremental Data Loading
* Airflow Orchestration
* Docker Containerization
* Data Quality Monitoring
* Automated Testing
* Cloud Deployment on AWS
