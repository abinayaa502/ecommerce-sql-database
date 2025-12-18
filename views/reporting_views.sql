-- 1. View to show customer order summary
CREATE VIEW customer_order_summary AS
SELECT 
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_spent
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

-- Usage:
-- SELECT * FROM customer_order_summary;

-- 2. View to show order details with product and price
CREATE VIEW order_item_details AS
SELECT 
    o.order_id,
    p.name AS product,
    oi.quantity,
    p.price,
    (oi.quantity * p.price) AS item_total
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- Usage:
-- SELECT * FROM order_item_details;

-- 3. View to show payment information
CREATE VIEW payment_report AS
SELECT 
    p.payment_id,
    o.order_id,
    o.total_amount,
    p.amount AS paid_amount,
    p.mode,
    p.payment_date
FROM payments p
JOIN orders o ON p.order_id = o.order_id;


