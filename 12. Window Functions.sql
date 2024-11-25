-- Author: Kowshik Kumar B
# Window Functions

-- Powerful and somwhat like group by; However, they do not roll everything up into 1 row when grouping
-- window functions allows to look at a partition/group; keeping each of their own unique rows in the output
-- rank, dense rank, row number, lead, lag, count, min, max, avg etc.

SELECT e.gender,
avg(s.salary) AS avg_salary
FROM employment_details.employee_demographics e
JOIN employment_details.employee_salary s
ON e.employee_id= s.employee_id 
GROUP BY gender;

-- vs 

SELECT e.first_name, 
e.gender, 
s.salary,
SUM(s.salary) over(PARTITION BY gender ORDER BY e.employee_id) AS Rolling_Total
FROM employment_details.employee_demographics e
JOIN employment_details.employee_salary s
ON e.employee_id= s.employee_id;


SELECT e.employee_id,
e.first_name, 
e.gender, 
s.salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary desc) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary desc) AS rank_num,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary desc) AS dense_rank_num
FROM employment_details.employee_demographics e
JOIN employment_details.employee_salary s
ON e.employee_id= s.employee_id;