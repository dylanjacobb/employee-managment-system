USE employeeTracker_DB;

/* for department table */
INSERT INTO departmentTable (name)
VALUES 
('Sales'), 
('Engineering'), 
('Finance'), 
('Legal'); 

/* for role table  */
INSERT INTO roleTable (title, salary, department_id)
VALUES 
('Sales Manager', 125000.00, 1), 
('Salesperson', 75,000.00, 1), 
('Lead Engineer', 200000.00, 2), 
('Software Engineer', 90000.00, 2), 
('Accountant', 75000.00, 3), 
('Accountant Manager', 75000.00, 3), 
('Legal Team Lead', 150000.00, 4), 
('Lawyer', 120000.00, 4)

/* for employee table */
INSERT INTO employeeTable (first_name, last_name, role_id, manager_id)
VALUES 
('Bruce', 'Johnson', NULL, 1),
('Frank', 'Keller', 2, NULL),
('Tyrone', 'Williams', NULL, 3),
('Abel', 'Tesfaye', 4, NULL),
('Zack', 'Porter', 5, NULL),
('Sharron', 'Brown', NULL, 6),
('Rachel', 'Thompson', NULL, 7),
('Kathryn', 'Garcia', 8, NULL),
('Rick', 'Grimes', 4, NULL),
('May', 'Walker', 2, NULL)