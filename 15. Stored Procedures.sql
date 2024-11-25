-- Author: Kowshik Kumar B
#  Stored Procedures
-- It is a way to save SQL code and reuse multiple times
-- we can just call it anytime we want it

SELECT *
FROM employment_details.employee_salary
WHERE salary>=150000;
-------------------------------------
CREATE PROCEDURE high_salaries()
SELECT *
FROM employment_details.employee_salary
WHERE salary>=150000;

CALL high_salaries();

--------------------------------

DELIMITER $$
CREATE PROCEDURE good_salaries()
BEGIN
	SELECT *
	FROM employment_details.employee_salary
	WHERE salary>200000;
	SELECT *
	FROM employment_details.employee_salary
	WHERE salary>150000;
END $$
DELIMITER ;

CALL good_salaries();

----------------------------------------------------

USE `employment_details`;
DROP procedure IF EXISTS `best_salaries`;

DELIMITER $$
USE `employment_details`$$
CREATE PROCEDURE `best_salaries` ()
BEGIN
SELECT *
	FROM employment_details.employee_salary
	WHERE salary>200000;
	SELECT *
	FROM employment_details.employee_salary
	WHERE salary>150000;
END$$

DELIMITER ;

--------------------------------------------

DELIMITER $$
USE `employment_details`$$
CREATE PROCEDURE `best_salaries2` (Emp_ID_Parameter INT)
BEGIN
SELECT salary
	FROM employment_details.employee_salary
	WHERE employee_id = Emp_ID_Parameter;
END$$

DELIMITER ;

CALL best_salaries2(1);
