-- 1. Get customers spent more than average order amount
SELECT name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING SUM(total_amount) > (
        SELECT AVG(total_amount) FROM orders
    )
);

-- 2. Find products never ordered
SELECT name
FROM products
WHERE product_id NOT IN (
    SELECT product_id FROM order_items
);

-- 3. Get highest order amount with subquery
SELECT MAX(total_amount) AS highest_order
FROM orders
WHERE total_amount = (
    SELECT MAX(total_amount) FROM orders
);

-- 4. Check if any UPI payments exist (EXISTS)
SELECT 'UPI Payments Available' AS Message
WHERE EXISTS (
    SELECT * FROM payments WHERE mode = 'UPI'
);
