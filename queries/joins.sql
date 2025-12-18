-- 1. Customer and their orders
SELECT c.name, c.city, o.order_id, o.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- 2. Order details with products 
SELECT o.order_id, p.name AS product, oi.quantity, p.price
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- 3. Customer payments with mode
SELECT c.name, p.payment_id, p.mode
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN payments p ON o.order_id = p.order_id;

-- 4. Get customers with NO orders 
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
