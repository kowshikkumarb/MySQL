-- Author: Kowshik Kumar B
# JOINS

-- Joins allows to combine 2 tables or more together if they have a common column
-- Doesn't have to be the same column name, but data value(s) in it are same which can be used to join the tables together
-- Inner Join, LEFT OUTER JOIN, RIGHT OUTER JOIN, FULL OUTER JOIN, CROSS JOIN, ANTI JOIN AND SELF JOIN

# 1st Table
SELECT * 
FROM employment_details.employee_demographics;

# 2nd Table
SELECT * 
FROM employment_details.employee_salary;

SELECT * 
FROM employment_details.employee_demographics AS e
INNER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
    
SELECT * 
FROM employment_details.employee_demographics AS e
LEFT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
    
SELECT e.employee_id,
e.age,
s.occupation,
s.salary
FROM employment_details.employee_demographics AS e
LEFT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
    
INSERT INTO employment_details.employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(17, 'Raghav', 'Mudum', 29, 'Male', '1994-04-28'),
(18, 'Timothy', 'Bak', 40, 'Male', '1984-03-02');

INSERT INTO employment_details.employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(19, 'Rebekah', 'Tai', 'Project Manager', 175500 ,3),
(20, 'Velusa', 'Sankar', 'Data Engineer', 160450,5);


-- LEFT JOIN/LEFT OUTER JOIN

SELECT *
FROM employment_details.employee_demographics AS e
LEFT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
    
SELECT *
FROM employment_details.employee_demographics AS e
RIGHT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;

SELECT e.employee_id,
e.age,
s.occupation,
s.salary
FROM employment_details.employee_demographics AS e
LEFT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
  
-- RIGHT JOIN/RIGHT OUTER JOIN
SELECT e.employee_id,
e.age,
s.occupation,
s.salary
FROM employment_details.employee_demographics AS e
RIGHT OUTER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;
-- JOIN/INNER JOIN    
SELECT *
FROM employment_details.employee_demographics AS e
INNER JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id;

-- SELF JOIN

SELECT *
FROM employment_details.employee_salary AS sal1
INNER JOIN employment_details.employee_salary AS sal2
	ON sal1.employee_id=sal2.employee_id;

-- Assigning employee with employee_id to next employee with next employee_id for Secret Santa game
SELECT *
FROM employment_details.employee_salary AS sal1
INNER JOIN employment_details.employee_salary AS sal2
	ON sal1.employee_id +1 =sal2.employee_id;

SELECT sal1.employee_id, 
sal1.first_name AS Secret_Santa, 
sal2.employee_id, 
sal2.first_name
FROM employment_details.employee_salary AS sal1
INNER JOIN employment_details.employee_salary AS sal2
	ON sal1.employee_id + 7 =sal2.employee_id;
    
-- Joining Multiple Tables

SELECT e.employee_id,
e.first_name,
e.age,
s.occupation,
s.salary,
d.department_name
FROM employment_details.employee_demographics AS e
JOIN employment_details.employee_salary AS s
	ON e.employee_id = s.employee_id
JOIN employment_details.employee_departments AS d
	ON s.dept_id=d.department_id;
