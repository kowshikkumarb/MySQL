-- Author: Kowshik Kumar B
# Temporary Tables (Only session Available in MySQL)
-- Visible to the session that created the temp tables
-- Used to store intermediate results for complex queries or to manipulate data before inserting it into permanent table


CREATE TEMPORARY TABLE temp_table
( first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_book VARCHAR(100)
);

SELECT * 
FROM temp_table;


INSERT INTO temp_table
VALUES ('Kaushik', 'Be', 'Before I go to sleep');


SELECT * 
FROM temp_table;

CREATE TEMPORARY TABLE salary_less_150k
SELECT *
FROM employment_details.employee_salary
WHERE salary<=150000;

SELECT * 
FROM salary_less_150k;