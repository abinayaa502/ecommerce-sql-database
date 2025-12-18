-- Create audit table
CREATE TABLE payment_audit (
    audit_id INT PRIMARY KEY AUTO_INCREMENT,
    payment_id INT,
    old_amount DECIMAL(10,2),
    new_amount DECIMAL(10,2),
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger to track updates on payments table
DELIMITER $$

CREATE TRIGGER PaymentUpdateAudit
BEFORE UPDATE ON payments
FOR EACH ROW
BEGIN
    INSERT INTO payment_audit(payment_id, old_amount, new_amount)
    VALUES (OLD.payment_id, OLD.amount, NEW.amount);
END $$

DELIMITER ;

