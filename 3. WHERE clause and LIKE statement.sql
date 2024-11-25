-- Author: Kowshik Kumar B
# WHERE Clause
## Used to filter records(rows) based on condition we specify

SELECT * 
FROM employment_details.employee_salary
WHERE salary>=200000;

SELECT * 
FROM employment_details.employee_salary
WHERE dept_id=3;

-- LOGICAL Operators -- AND -- OR -- NOT --
SELECT * 
FROM employment_details.employee_demographics
WHERE gender='Female' AND age>25;

SELECT * 
FROM employment_details.employee_demographics
WHERE gender!='Female' OR age>30;

SELECT * 
FROM employment_details.employee_demographics
WHERE gender!='Female' OR NOT age>30;

SELECT * 
FROM employment_details.employee_demographics
WHERE (first_name='Sam' AND age=28) OR last_name='Be' ;


# LIKE Statment
-- ALL (%)
-- Specific (__)


SELECT * 
FROM employment_details.employee_demographics
WHERE first_name like 's%';

SELECT * 
FROM employment_details.employee_demographics
WHERE first_name like '%sh%';


SELECT * 
FROM employment_details.employee_demographics
WHERE first_name like 's__';

SELECT * 
FROM employment_details.employee_demographics
WHERE birth_date like '1994%';