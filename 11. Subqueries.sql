-- Author: Kowshik Kumar B
# Subqueries

-- Subqueries are queries inside or within queries
-- Areas where it can be implemented are at "WHERE","FROM","SELECT" levels

-- department is 'Engineering' (working at "WHERE" level)
SELECT * 
FROM employment_details.employee_demographics
WHERE employee_id IN 
					(SELECT employee_id 
						FROM employment_details.employee_salary
                        WHERE dept_id=5);


-- Compare salaries with average salaries (working at "SELECT" level)
SELECT first_name,
salary,
(SELECT AVG(salary) FROM employment_details.employee_salary) AS avg_salary
FROM employment_details.employee_salary;

-- (working at "FROM" level)
SELECT * 
FROM 
(SELECT gender, MIN(age), MAX(age), AVG(age), COUNT(age) FROM employment_details.employee_demographics GROUP BY gender) AS aggregates_table;

SELECT  AVG(`MAX(age)`)
FROM 
(SELECT gender, MIN(age), MAX(age), AVG(age), COUNT(age) FROM employment_details.employee_demographics GROUP BY gender) AS aggregates_table;
