-- 1. Total revenue generated
SELECT SUM(total_amount) AS total_revenue
FROM orders;

-- 2. Average order amount
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- 3. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 4. Highest and lowest product price
SELECT MAX(price) AS highest_price,
       MIN(price) AS lowest_price
FROM products;

-- 5. Total sales per customer
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 6. Customers who spent more than 20,000
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING SUM(o.total_amount) > 20000;
