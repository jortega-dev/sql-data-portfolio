-- DROP database if exists
DROP DATABASE IF EXISTS company_db;

-- CREATE database
CREATE DATABASE company_db;
USE company_db;

-- CREATE table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    names_ VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    experience_years INT
);

-- INSERT sample data
INSERT INTO employees (emp_id, names_, department, salary, experience_years) VALUES
(1, 'Alice', 'IT', 80000, 5),
(2, 'Bob', 'HR', 60000, 3),
(3, 'Charlie', 'IT', 95000, 8),
(4, 'Diana', 'Finance', 70000, 4),
(5, 'Edward', 'HR', 62000, 6);

-- ==========================
-- Practice Queries
-- ==========================

-- Select all employees from IT department with salary > 85000
SELECT *
FROM employees
WHERE department = 'IT' AND salary > 85000;

-- Select all employees in HR OR with more than 5 years experience
SELECT *
FROM employees
WHERE department = 'HR' OR experience_years > 5;

-- Select employee name and salary for employees in Finance with salary >= 70000
SELECT names_, salary
FROM employees
WHERE department = 'Finance' AND salary >= 70000;
