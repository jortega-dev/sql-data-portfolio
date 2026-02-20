-- CREATE database

CREATE DATABASE retail_sales;
USE retail_sales;

-- CREATE sales table 

CREATE TABLE sales (
	sales_id INT PRIMARY KEY,
    product VARCHAR(50),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10,2),
    sale_date DATE
    );
    
-- INSENT sample data
INSERT INTO sales (sales_id, product, category, quantity, price, sale_date) VALUES
(1, 'Laptop', 'Electronics', 3, 1200.00, '2026-01-01'),
(2, 'Mouse', 'Electronics', 10, 25.00, '2026-01-02'),
(3, 'Chair', 'Furniture', 5, 100.00, '2026-01-03'),
(4, 'Desk', 'Furniture', 2, 250.00, '2026-01-04'),
(5, 'Headphones', 'Electronics', 8, 150.00, '2026-01-05');

-- ======================
-- Practice Queries
-- ======================
-- 1 Select all electronics with price > 100

SELECT *
FROM sales
WHERE category = 'electronics' AND price > 100;

-- 2 Select all sales for forniture or quantity >= 8

SELECT * 
FROM sales
WHERE category = 'Furniture' OR quantity >= 8;



    