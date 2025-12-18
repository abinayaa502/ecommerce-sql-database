-- 1. Procedure to get total spending of a customer
DELIMITER $$

CREATE PROCEDURE GetCustomerSpending(IN cust_id INT)
BEGIN
    SELECT c.name, SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    WHERE c.customer_id = cust_id;
END $$

DELIMITER ;

-- Call example:
-- CALL GetCustomerSpending(1);

-- 2. Procedure to insert a new order
DELIMITER $$

CREATE PROCEDURE AddNewOrder(
    IN ord_id INT,
    IN cust_id INT,
    IN ord_date DATE,
    IN amount DECIMAL(10,2)
)
BEGIN
    INSERT INTO orders(order_id, customer_id, order_date, total_amount)
    VALUES (ord_id, cust_id, ord_date, amount);
END $$

DELIMITER ;


