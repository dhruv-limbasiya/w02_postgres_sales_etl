# Superstore Dataset Assessment

## Dataset Overview

- Dataset Name: Superstore Sales Dataset
- Total Rows: 51290
- Total Columns: 24

## Columns

| Column Name | Data Type |
|------------|-----------|
| Order ID | object |
| Order Date | object |
| Sales | float64 |
| Profit | float64 |

## Missing Values

| Column | Missing Count |
|---------|--------------|
| Postal Code | 41296 |

## Duplicate Records

Total Duplicate Rows: 0

## Data Quality Issues Identified

1. Column names contain spaces.
2. Date columns stored as object datatype.
4. Missing values found in some columns.

## Cleaning Plan

1. Convert column names to lowercase.
2. Replace spaces with underscores.
3. Remove duplicate records.
4. Handle missing values.
5. Convert date columns to datetime datatype.

## Date Validation

Order Date and Ship Date were initially loaded as object datatype.

After conversion to datetime:

Ship Date >= Order Date for all 51,290 records.

No date quality issues detected.

## Total revenue: 12642501.90988

## Unique Customers: 795

## Unique Products: 3788

## Seles Data Period:
    Start Date: 01-01-2011
    End Date: 31-12-2014
    
    
## Potential Warehouse Design

dim_customer
- customer_id
- customer_name
- segment

dim_product
- product_id
- product_name
- category
- sub_category

dim_date
- order_date
- year
- month
- quarter

fact_sales
- order_id
- sales
- quantity
- discount
- profit

Reason:

Each sales record contains customer, product and date information which can be separated into dimension tables and linked through a central fact table.   

## Granularity

Each row represents a single product purchased within an order.

A single order may contain multiple products, therefore Order ID is not unique.