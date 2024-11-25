-- Author: Kowshik Kumar B
# HAVING vs WHERE
-- Both are used to filter rows, but
-- WHERE filters rows based off columns 
-- HAVING filters rows based off aggregated columns when grouped

SELECT dept_id, AVG(salary)
FROM employment_details.employee_salary
GROUP BY dept_id
HAVING AVG(salary)>200000;

INSERT INTO employment_details.employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(15, 'Priyanka', 'Mis', 30, 'Female', '1995-03-15'),
(16, 'Sampath', 'Bop', 25, 'Male', '1999-04-21');

INSERT INTO employment_details.employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(15, 'Priyanka', 'Mis', 'Engineer', 100000 ,5),
(16, 'Sampath', 'Bop', 'Engineer', 100000,5);

SELECT *
FROM employment_details.employee_salary;

SELECT occupation, 
AVG(salary)
FROM employment_details.employee_salary
WHERE occupation LIKE '%eng%'
GROUP BY occupation
HAVING AVG(salary) > 99999;

-- On the backend, "WHERE" comes before "GROUPBY", so cannot filter which has not yet been grouped yet
-- That's why "HAVING" needs to be used for filtering instead of "WHERE"