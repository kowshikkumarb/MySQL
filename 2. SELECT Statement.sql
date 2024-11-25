-- Author: Kowshik Kumar B
#SELECT STATEMENT
-- The SELECT statement is used to work with columns and rows of a Table
-- The namespace is important while working with different databases

-- Selecting all columns from "employee_demographics" table which is in "employment_details" database(2 levels of namespace)
-- Best Practice is to include database namespacing before table namespacing
SELECT * 
FROM employment_details.employee_demographics;

# Selecting a specific column 
SELECT first_name,
birth_date 
FROM employment_details.employee_demographics;

# Calculations
-- SQL follows PEDMAS rule like how we follow BODMAS rule for performing mathematical operations
SELECT first_name,
salary,
salary+1000
FROM employment_details.employee_salary;

SELECT first_name,
salary,
(salary+1000) * 0.3
FROM employment_details.employee_salary;


# SELECT DISTINCT 
-- Emits distinct result "MALE" and "Female"
SELECT DISTINCT gender
FROM employment_details.employee_demographics;

-- Emits grouped distinct results for multiple columns
SELECT DISTINCT first_name,
gender
FROm employment_details.employee_demographics;


