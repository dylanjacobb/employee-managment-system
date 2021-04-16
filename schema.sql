DROP DATABASE IF EXISTS employeeDB;
CREATE DATABASE employeeDB;
USE employeeDB;

CREATE TABLE departmentTable (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NULL
);

/* role table */
CREATE TABLE roleTable (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NULL,
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departmentTable(id)
);

/* employee table */
CREATE TABLE employeeTable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    -- FIXME:
    FOREIGN KEY (role_id) REFERENCES roleTable(id),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES roleTable(id)
    -- 
);