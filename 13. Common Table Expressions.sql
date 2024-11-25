-- Author: Kowshik Kumar B
# CTE(Common Table Expressions)
-- Allows to define a subquery block that can be referenced within the main query
-- Useful for recursive queries or queries that require referencing a higher level


WITH cte_agg AS
(
SELECT e.gender,
AVG(s.salary) AS avg_salary,
MIN(s.salary) AS min_salary,
MAX(s.salary) AS max_salary,
COUNT(salary) AS count_salary
FROM employment_details.employee_demographics e
JOIN employment_details.employee_salary s
ON e.employee_id= s.employee_id 
GROUP BY gender
)
SELECT * 
FROM cte_agg;


WITH cte_emp(Emp_ID, Emp_Name, AGE) AS
(
SELECT employee_id,
first_name,
age
FROM employment_details.employee_demographics
WHERE age>29
),
cte_sal(Emp_ID, salary) AS
(
SELECT employee_id,
salary
FROM employment_details.employee_salary
WHERE salary>150000
)
SELECT *
FROM cte_emp
JOIN cte_sal
ON cte_emp.Emp_ID=cte_sal.Emp_ID;