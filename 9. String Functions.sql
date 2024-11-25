-- Author: Kowshik Kumar B
# String Functions

SELECT LENGTH('Calculate');
SELECT LENGTH('8764567787') AS VALID_PHONE_NUMBER;

SELECT first_name, 
LENGTH(first_name)
FROM employment_details.employee_demographics
ORDER BY 2;

SELECT UPPER('kowshik kumar b');
SELECT LOWER('KOWShik kuMAR B');

SELECT UPPER(first_name) AS first_name, 
UPPER(last_name) AS last_name
FROM employment_details.employee_demographics;

SELECT TRIM('                             KOWSHIK KUMAR B                        ');
SELECT LTRIM('                             KOWSHIK KUMAR B                        ');
SELECT RTRIM('                             KOWSHIK KUMAR B                        ');


SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employment_details.employee_demographics;

SELECT first_name, 
REPLACE(first_name,'a','z')
FROM employment_details.employee_demographics;

SELECT LOCATE('u','kaushik');

SELECT first_name,
LOCATE('ka', first_name)
FROM employment_details.employee_demographics;

SELECT first_name,
last_name,
CONCAT(first_name,' ', last_name) AS full_name
FROM employment_details.employee_demographics;


