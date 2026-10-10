-- Sales Data Analysis: SQL practice queries
-- Table assumed: sales_data
-- Columns: order_id, order_date, region, city, category, product,
--          quantity, unit_price_inr, payment_mode, sales_inr, month

-- 1. View all records
SELECT * FROM sales_data;

-- 2. Total sales, orders, and units sold
SELECT
    SUM(sales_inr) AS total_sales_inr,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(quantity) AS units_sold
FROM sales_data;

-- 3. Monthly sales
SELECT month, SUM(sales_inr) AS total_sales_inr
FROM sales_data
GROUP BY month
ORDER BY MIN(order_date);

-- 4. Sales by product category
SELECT category, SUM(sales_inr) AS total_sales_inr
FROM sales_data
GROUP BY category
ORDER BY total_sales_inr DESC;

-- 5. Top 5 products by sales
SELECT product, SUM(sales_inr) AS total_sales_inr
FROM sales_data
GROUP BY product
ORDER BY total_sales_inr DESC
LIMIT 5;

-- 6. Sales by city
SELECT city, SUM(sales_inr) AS total_sales_inr
FROM sales_data
GROUP BY city
ORDER BY total_sales_inr DESC;

-- 7. Payment mode distribution
SELECT payment_mode, COUNT(*) AS order_count, SUM(sales_inr) AS total_sales_inr
FROM sales_data
GROUP BY payment_mode
ORDER BY total_sales_inr DESC;

-- 8. Average order value
SELECT SUM(sales_inr) * 1.0 / COUNT(DISTINCT order_id) AS average_order_value
FROM sales_data;
