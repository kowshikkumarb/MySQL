-- Author: Kowshik Kumar B
# CASE statements

SELECT first_name,
last_name,
age,
CASE
	WHEN age<=25 THEN 'Young Employee'
    WHEN age BETWEEN 26 AND 35 THEN 'Mid Senior Employee'
    WHEN age>35 THEN 'Senior Employee'
END AS age_bucket
FROM employment_details.employee_demographics;


# Pay Increase and Bonus for Employees
-- <150000 = 10% Bonus
-- >150000 = 15% Bonus
-- Leadership = 20% Bonus

SELECT first_name,
last_name,
salary,
CASE
	WHEN salary<=150000 THEN salary + (salary * 0.1)
    WHEN salary>150000 THEN salary + (salary * 0.15)
    WHEN dept_id=1 THEN salary *1.2
END AS total_salary
FROM employment_details.employee_salary;