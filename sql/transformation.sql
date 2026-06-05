-- Create dimension table for customers

CREATE TABLE dim_customer AS
SELECT DISTINCT
customer_id,
customer_name,
segment
FROM stg_sales;

-- Create dimension table for products

CREATE TABLE dim_product AS
SELECT DISTINCT
product_id,
product_name,
category,
sub_category	
FROM stg_sales;

-- create dimension table for dates

CREATE TABLE dim_date AS 
SELECT DISTINCT order_date,
EXTRACT(YEAR FROM order_date) AS order_year,
EXTRACT(MONTH FROM order_date) AS order_month,
EXTRACT(DAY FROM order_date) AS order_day,
EXTRACT(QUARTER FROM order_date) AS order_quarter
FROM stg_sales;

-- create dimension table for fact_sales

CREATE TABLE fact_sales AS
SELECT DISTINCT 
order_id,
customer_id,
product_id,
order_date,
sales,
quantity,
discount,
profit,
shipping_cost
FROM stg_sales;