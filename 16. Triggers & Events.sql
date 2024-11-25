-- Author: Kowshik Kumar B
#  Triggers & Events
-- Trigger is a block of code that executes when an event takes place in a table
-- Events(Jobs) are task or block of code that gets executed according to a schedule


## Triggers
DELIMITER $$
CREATE TRIGGER employee_insert2
	AFTER INSERT ON employee_salary
    FOR EACH ROW
BEGIN
	INSERT INTO employee_demographics(employee_id, first_name, last_name)
    VALUES(NEW.employee_id, NEW.first_name, NEW.last_name);
END $$

DELIMITER ;



SELECT * FROM employee_salary;

INSERT INTO employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES(21, 'Shashank', 'Jakka', 'Devops Engineer', 120000, 5);

SELECT * FROM employee_demographics;

DROP TRIGGER employee_insert;


## Events
SELECT * FROM employee_salary;
INSERT INTO employee_salary(employee_id,first_name, last_name,occupation, salary,dept_id)
VALUES (1001, 'Michael', 'Phel', 'contractor', 150000, 5);

DELIMITER $$
CREATE EVENT delete_contractor
ON SCHEDULE EVERY 30 SECOND
DO BEGIN
	DELETE 
    FROM employee_salary
    WHERE occupation = 'contractor';
END $$
DELIMITER ;

SHOW VARIABLES LIKE 'event%';