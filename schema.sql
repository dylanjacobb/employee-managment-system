DROP DATABASE IF EXISTS employeesdb;
CREATE DATABASE employeesdb;
USE employeesdb;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    department VARCHAR(30) NULL
);

/* role table */
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NULL,
    salary DECIMAL,
    department_id INT, FOREIGN KEY (department_id) REFERENCES department(id)
);

/* employee table */
CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT, FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT, FOREIGN KEY (manager_id) REFERENCES employee(id)
);

/* for department table */
INSERT INTO department (department)
VALUES 
('Sales'), 
('Engineering'), 
('Finance'), 
('Legal'); 

/* for role table  */
INSERT INTO role (title, salary, department_id)
VALUES 
('Sales Manager', 125000.00, 1), 
('Salesperson', 75000.00, 1), 
('Lead Engineer', 200000.00, 2), 
('Software Engineer', 90000.00, 2), 
('Accountant', 75000.00, 3), 
('Accountant Manager', 75000.00, 3), 
('Legal Team Lead', 150000.00, 4), 
('Lawyer', 120000.00, 4);

/* for employee table */
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('Bruce', 'Johnson', 1, NULL),
('Frank', 'Keller', 2, NULL),
('Tyrone', 'Williams', 3, NULL),
('Abel', 'Tesfaye', 4, NULL),
('Zack', 'Porter', 5, NULL),
('Sharron', 'Brown', 6, NULL), 
('Rachel', 'Thompson', 7, NULL),
('Kathryn', 'Garcia', 8, NULL),
('Rick', 'Grimes', 4, NULL),
('May', 'Walker', 2, NULL)
