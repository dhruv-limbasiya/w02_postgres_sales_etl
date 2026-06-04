CREATE TABLE IF NOT EXISTS stg_sales (
    row_id INTEGER,

    order_id VARCHAR(50),
    order_date DATE,
    ship_date DATE,

    ship_mode VARCHAR(50),

    customer_id VARCHAR(50),
    customer_name VARCHAR(255),
    segment VARCHAR(50),

    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100),
    market VARCHAR(100),
    region VARCHAR(100),

    product_id VARCHAR(100),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    product_name TEXT,

    sales NUMERIC(12,2),
    quantity INTEGER,
    discount NUMERIC(5,2),
    profit NUMERIC(12,2),
    shipping_cost NUMERIC(12,2),

    order_priority VARCHAR(50)
);