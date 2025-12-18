INSERT INTO customers VALUES
(1, 'Arun Kumar', 'arun@gmail.com', '9876543210', 'Coimbatore'),
(2, 'Priya R', 'priya@gmail.com', '9876501234', 'Chennai'),
(3, 'Deepak', 'deepak@gmail.com', '9876123450', 'Bangalore'),
(4, 'Sneha', 'sneha@gmail.com', '9876554321', 'Mumbai');

INSERT INTO products VALUES
(101, 'Laptop', 55000.00, 'Electronics'),
(102, 'Smartphone', 22000.00, 'Electronics'),
(103, 'T-Shirt', 500.00, 'Clothing'),
(104, 'Shoes', 1500.00, 'Footwear');

INSERT INTO orders VALUES
(1001, 1, '2023-05-01', 55000.00),
(1002, 2, '2023-05-03', 22000.00),
(1003, 3, '2023-05-05', 2000.00),
(1004, 1, '2023-05-07', 1500.00);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1002, 102, 1),
(3, 1003, 103, 2),
(4, 1004, 104, 1);

INSERT INTO payments VALUES
(9001, 1001, '2023-05-02', 55000.00, 'UPI'),
(9002, 1002, '2023-05-04', 22000.00, 'Credit Card'),
(9003, 1003, '2023-05-06', 2000.00, 'UPI'),
(9004, 1004, '2023-05-08', 1500.00, 'Cash');
