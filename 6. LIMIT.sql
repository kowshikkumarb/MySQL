-- Author: Kowshik Kumar B
# LIMIT

-- Emits number of values listed in "LIMIT"
SELECT * 
FROM employment_details.employee_demographics
ORDER BY age desc
LIMIT 3;


-- Emits values(in our case just 1) next to 2nd value 
-- Starts at position 2 and takes 1 rows after that
SELECT * 
FROM employment_details.employee_demographics
ORDER BY age desc
LIMIT 2,1;

-- Starts at position 3 and takes 2 rows after that
SELECT * 
FROM employment_details.employee_demographics
ORDER BY age desc
LIMIT 3,2;

# ALIASING (AS)

SELECT gender,
AVG(age) AS avg_age
FROM employment_details.employee_demographics
GROUP BY gender
HAVING avg_age > 30;

