USE employeeTracker_DB;

/* for department table */
INSERT INTO departmentTable (name)
VALUES ('Sales');
INSERT INTO departmentTable (name)
VALUES ('Engineering');
INSERT INTO departmentTable (name)
VALUES ('Finance');
INSERT INTO departmentTable (name)
VALUES ('Legal');

/* for role table  */
INSERT INTO roleTable (title)
VALUES ('Sales Lead');
INSERT INTO roleTable (title)
VALUES ('Salesperson');
INSERT INTO roleTable (title)
VALUES ('Lead Engineer');
INSERT INTO roleTable (title)
VALUES ('Software Engineer');
INSERT INTO roleTable (title)
VALUES ('Accountant');
INSERT INTO roleTable (title)
VALUES ('Legal Team Lead');
INSERT INTO roleTable (salary)
VALUES ('60000');
INSERT INTO roleTable (salary)
VALUES ('75000');
INSERT INTO roleTable (salary)
VALUES ('90000');
INSERT INTO roleTable (salary)
VALUES ('100000');
INSERT INTO roleTable (salary)
VALUES ('115000');
INSERT INTO roleTable (salary)
VALUES ('130000');
INSERT INTO roleTable (salary)
VALUES ('150000');
INSERT INTO roleTable (salary)
VALUES ('165000');
INSERT INTO roleTable (salary)
VALUES ('180000');
INSERT INTO roleTable (salary)
VALUES ('200000');
INSERT INTO roleTable (salary)
VALUES ('215000');
INSERT INTO roleTable (salary)
VALUES ('225000');
INSERT INTO roleTable (salary)
VALUES ('250000');

/* for employee table */
INSERT INTO employeeTable (first_name)
VALUES ('Bobby');
INSERT INTO employeeTable (first_name)
VALUES ('Frank');
INSERT INTO employeeTable (first_name)
VALUES ('Tyrone');
INSERT INTO employeeTable (first_name)
VALUES ('Abel');
INSERT INTO employeeTable (first_name)
VALUES ('Zack');
INSERT INTO employeeTable (first_name)
VALUES ('Sharron');
INSERT INTO employeeTable (first_name)
VALUES ('Rachel');
INSERT INTO employeeTable (first_name)
VALUES ('Kathryn');
INSERT INTO employeeTable (first_name)
VALUES ('Rick');
INSERT INTO employeeTable (first_name)
VALUES ('May');
INSERT INTO employeeTable (last_name)
VALUES ('Johnson');
INSERT INTO employeeTable (last_name)
VALUES ('Keller');
INSERT INTO employeeTable (last_name)
VALUES ('Williams');
INSERT INTO employeeTable (last_name)
VALUES ('Tesfaye');
INSERT INTO employeeTable (last_name)
VALUES ('Porter');
INSERT INTO employeeTable (last_name)
VALUES ('Brown');
INSERT INTO employeeTable (last_name)
VALUES ('Thompson');
INSERT INTO employeeTable (last_name)
VALUES ('Garcia');
INSERT INTO employeeTable (last_name)
VALUES ('Walker');
INSERT INTO employeeTable (last_name)
VALUES ('Renner');
-- TODO: add role id and manager id to each employee