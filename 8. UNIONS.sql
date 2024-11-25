-- Author: Kowshik Kumar B
# UNIONS

-- All of the results with duplicates
SELECT first_name, 
last_name
FROM employment_details.employee_demographics
UNION ALL
SELECT first_name, 
last_name
FROM employment_details.employee_salary;

SELECT first_name, 
last_name
FROM employment_details.employee_demographics
UNION 
SELECT first_name, 
last_name
FROM employment_details.employee_salary;

-- All result-set without duplicates
SELECT first_name, 
last_name
FROM employment_details.employee_demographics
UNION DISTINCT
SELECT first_name, 
last_name
FROM employment_details.employee_salary;

-- Usecase to identify and label 
SELECT first_name, 
last_name,
'Young' AS Label
FROM employment_details.employee_demographics
WHERE age<25
UNION
SELECT first_name, 
last_name,
'Senior Employee' AS Label
FROM employment_details.employee_demographics
WHERE age>39
UNION
SELECT first_name, 
last_name,
'Highly paid employee' AS Label
FROM employment_details.employee_salary
WHERE salary>175000
ORDER BY first_name,last_name;
