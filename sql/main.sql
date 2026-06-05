select * from stg_sales limit(5);

CREATE TABLE dim_customer AS
SELECT DISTINCT
customer_id,
customer_name,
segment
FROM stg_sales;

CREATE TABLE dim_product AS
SELECT DISTINCT
product_id,
product_name,
category,
sub_category	
FROM stg_sales;


select count(DISTINCT order_date) from stg_sales;

CREATE TABLE dim_date AS 
SELECT DISTINCT order_date,
EXTRACT(YEAR FROM order_date) AS order_year,
EXTRACT(MONTH FROM order_date) AS order_month,
EXTRACT(DAY FROM order_date) AS order_day,
EXTRACT(QUARTER FROM order_date) AS order_quarter
FROM stg_sales;

select count(*) from dim_date;

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

select * from dim_customer limit 5;
select * from dim_product limit 5;
select * from dim_date limit 5;
select * from fact_sales limit 5;

SELECT SUM(sales) FROM fact_sales;
SELECT SUM(profit) FROM fact_sales;
SELECT COUNT(*) FROM fact_sales;

-- Query 1: Top 10 Customers by Revenue
SELECT customer_name, SUM(f.sales) AS Revenue 
FROM dim_customer c 
LEFT JOIN fact_sales f 
ON c.customer_id = f.customer_id 
GROUP BY c.customer_name
ORDER BY REvenue DESC limit 10;

-- Query 2: Revenue by Category
SELECT DISTINCT category, SUM(f.sales) AS Revenue
FROM dim_product p
LEFT JOIN fact_sales f
on p.product_id = f.product_id
GROUP BY p.category
ORDER BY Revenue DESC LIMIt 10;

-- Query 3: Profit by Category
SELECT category, SUM(f.profit) AS profit 
FROM dim_product p
LEFT JOIN fact_sales f
ON p.product_id = f.product_id
GROUP BY p.category;

-- Query 4: Monthly Revenue Trend
SELECT dd.order_year,
    dd.order_month,
    SUM(f.sales) AS monthly_revenue
FROM dim_date dd
JOIN fact_sales f
ON dd.order_date = f.order_date
GROUP BY
	dd.order_year,
    dd.order_month
ORDER BY
    dd.order_year,
    dd.order_month;

-- Query 5: Top 10 Products by Revenue
SELECT product_name, SUM(f.sales) AS revenue
FROM dim_product dp
LEFT JOIN fact_sales f
ON dp.product_id = f.product_id
GROUP BY dp.product_name 
ORDER BY revenue DESC
LIMIT 10;