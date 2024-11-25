-- Author: Kowshik Kumar B
# DATABASE, TABLES AND VALUES
-- Creating Database, Tables and Insert values
DROP DATABASE IF EXISTS `Employment_Details`;
CREATE DATABASE `Employment_Details`;
USE `Employment_Details`;





CREATE TABLE employee_demographics ( 
employee_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
gender VARCHAR(10),
birth_date DATE,
PRIMARY KEY(employee_id)
);


INSERT INTO employee_demographics (employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(1, 'Kaushik', 'Be', 30, 'Male', '1994-02-10'),
(2, 'Sam', 'Avi', 28, 'Female', '1995-01-21'),
(3, 'Sowmya', 'Be', 26, 'Female', '1996-09-26'),
(4, 'Charan', 'Bohara', 30, 'Male', '1994-08-25'),
(5, 'Bharadwaj', 'Muthu', 30, 'Male', '1993-12-27'),
(6, 'Sujan', 'Babu', 30, 'Male', '1993-05-16'),
(7, 'Bala', 'Krishna', 50, 'Male', '1974-07-15'),
(8, 'James', 'Alwin', 41, 'Male', '1983-06-21'),
(9, 'Vaish', 'Avi', 23, 'Female', '2000-09-28'),
(10, 'Shweta', 'Singh', 36, 'Female', '1988-03-27'),
(11, 'Keerti', 'Gurr', 27, 'Female', '1996-06-20'),
(12, 'Ashish', 'Chinta', 30, 'Male', '1994-07-18'),
(13, 'Shiva', 'Gurr', 29, 'Male', '1993-04-13'),
(14, 'Lokesh', 'Val', 31, 'Male', '1993-11-21');




CREATE TABLE employee_salary ( 
employee_id INT NOT NULL,
first_name VARCHAR(50),
last_name VARCHAR(50),
occupation VARCHAR(50),
salary INT,
dept_id INT
);



INSERT INTO employee_salary (employee_id, first_name, last_name, occupation, salary, dept_id)
VALUES
(1, 'Kaushik', 'Be', 'CFO', 203500 ,1),
(2, 'Sam', 'Avi', 'CTO', 350400,1),
(3, 'Sowmya', 'Be', 'CEO', 460540,1),
(4, 'Charan', 'Bohara', 'Strategy Officer', 170800, 2),
(5, 'Bharadwaj', 'Muthu',  'Decision Officer', 204360,3),
(6, 'Sujan', 'Babu', 'Analytics Manager', 186450,4),
(7, 'Bala', 'Krishna', 'Workday Manager', 201440,5),
(8, 'James', 'Alwin',  'Data Engineer', 160450,4),
(9, 'Vaish', 'Avi',  'Design Engineer', 185750,5),
(10, 'Shweta', 'Singh',  'Test Engineer', 104350,5),
(11, 'Keerti', 'Gurr',  'Social Networking Expert',150650, 3),
(12, 'Ashish', 'Chinta',  'COO', 190550,2),
(13, 'Shiva', 'Gurr',  'CIEO', 189550,5),
(14, 'Lokesh', 'Val', 'CISO', 195750,2);


CREATE TABLE employee_departments(
department_id INT NOT NULL AUTO_INCREMENT,
department_name VARCHAR(50) NOT NULL,
PRIMARY KEY (department_id)
);

INSERT INTO employee_departments(department_name)
VALUES
('Leadership'),
('Strategy'),
('Decisions'),
('Data and Analytics'),
('Engineering');