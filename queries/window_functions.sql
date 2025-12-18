-- 1. Rank customers by total spending
SELECT 
    c.name,
    SUM(o.total_amount) AS total_spent,
    RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS spending_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 2. Running total of payments (cumulative sum)
SELECT 
    payment_id,
    amount,
    SUM(amount) OVER (ORDER BY payment_id) AS running_total
FROM payments;

-- 3. Dense rank of product prices within each category
SELECT
    category,
    name AS product,
    price,
    DENSE_RANK() OVER (PARTITION BY category ORDER BY price DESC) AS price_rank
FROM products;

-- 4. Row number for each order
SELECT 
    order_id,
    customer_id,
    ROW_NUMBER() OVER (ORDER BY order_date) AS order_sequence
FROM orders;
