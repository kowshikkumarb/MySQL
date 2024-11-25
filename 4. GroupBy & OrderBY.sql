-- Author: Kowshik Kumar B
# GROUP BY
-- The "GROUP BY" is used to group together rows that have same values in specified column/columns
-- To run aggregate functions on top of these grouped rows

SELECT gender, 
AVG(age) AS AVERAGE_AGE
FROM employment_details.employee_demographics
GROUP BY gender;

SELECT gender, 
AVG(age),
MIN(age),
MAX(age),
COUNT(age)
FROM employment_details.employee_demographics
GROUP BY gender;


SELECT dept_id, AVG(salary)
FROM employment_details.employee_salary
GROUP BY dept_id;

#ORDER BY
-- The "ORDER BY" is used to sort the result-set in 'asc' or 'desc' order

SELECT *
FROM employment_details.employee_demographics
ORDER BY age desc;

SELECT *
FROM employment_details.employee_demographics
ORDER BY age,gender asc;

SELECT *
FROM employment_details.employee_demographics
ORDER BY age,gender desc;


SELECT *
FROM employment_details.employee_demographics
ORDER BY 4 desc;