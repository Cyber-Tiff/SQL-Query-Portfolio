-- Sample Data Script for Fraud Analysis

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    email VARCHAR(100)
);

-- Insert sample customers
INSERT INTO customers (customer_id, customer_name, email) VALUES
(1, 'Alice Smith', 'alice@example.com'),
(2, 'Bob Johnson', 'bob@example.com'),
(3, 'Carol Davis', 'carol@example.com');

-- Create transactions table
CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    customer_id INT,
    transaction_date DATE,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample transactions
INSERT INTO transactions (transaction_id, customer_id, transaction_date, amount) VALUES
(101, 1, '2025-06-01', 120.50),
(102, 2, '2025-06-02', 250.75),
(103, 1, '2025-06-03', 320.00),
(104, 3, '2025-06-04', 90.25),
(105, 2, '2025-06-05', 400.00);

-- Create fraud_cases table
CREATE TABLE fraud_cases (
    fraud_case_id INT PRIMARY KEY,
    transaction_id INT,
    status VARCHAR(50),
    resolution_date DATE,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

-- Insert sample fraud cases
INSERT INTO fraud_cases (fraud_case_id, transaction_id, status, resolution_date) VALUES
(201, 101, 'Resolved', '2025-06-05'),
(202, 102, 'In Progress', NULL),
(203, 103, 'Resolved', '2025-06-06');
