const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'employeesdb'
});

connection.connect((err) => {
    if (err) throw err;
    console.log('EMPLOYEE TRACKER')
    startPrompts();
})

const startPrompts = () => {
    inquirer
        .prompt({
            name: 'action',
            type: 'rawlist',
            message: 'What Would Like to Do?',
            choices: [
                'View All Employees',
                'View All Departments',
                'View All Roles',
                'Add Department',
                'Add Role',
                'Add Employee',
                'Update Employee Role',
            ],
        })
        .then((answer) => {
            switch (answer.action) {
                case 'View All Employees':
                    viewAllEmployees();
                    break;

                case 'View All Departments':
                    viewAllDepartments();
                    break;

                case 'View All Roles':
                    viewAllRoles();
                    break;

                case 'Add Department':
                    addDepartment();
                    break;

                case 'Add Role':
                    addRole();
                    break;

                case 'Add Employee':
                    addEmployee();
                    break;

                case 'Update Employee Role':
                    updateEmployeeRole();
                    break;

                default:
                    console.log(`Invalid action: ${answer.action}`);
                    break;

            }
        })
}

const viewAllEmployees = () => {
    connection.query(
        'SELECT employee.id, employee.first_name, employee.last_name, role.title, department.department, role.salary FROM employee LEFT JOIN role ON employee.role_id = role.id LEFT JOIN department ON department.id = role.department_id;',
        (err, res) => {
            if (err) throw err;
            console.table(res);
            startPrompts();
        });
};

const viewAllDepartments = () => {
    connection.query('SELECT * FROM department', (err, res) => {
        if (err) throw err;
        console.table(res);
        startPrompts();
    })
}

const viewAllRoles = () => {
    connection.query('SELECT * FROM role', (err, res) => {
        if (err) throw err;
        console.table(res);
        startPrompts();
    })
}

const addDepartment = () => {
    inquirer
        .prompt([
            {
                name: 'departmentName',
                type: 'input',
                message: 'Enter department name here: '
            },
        ]).then(function (res) {
            let query = 'INSERT INTO department SET ?';
            connection.query(
                query, {
                department: res.departmentName
            },
                (err) => {
                    if (err) throw err;
                    console.table(res);
                    console.log('Department successfully created!')
                    startPrompts();
                }
            )
        })
}

const addRole = () => {
    inquirer
        .prompt([
            {
                name: 'title',
                type: 'input',
                message: 'Enter role name here: '
            },
            {
                name: 'salary',
                type: 'input',
                message: 'Enter the roles salary here: '
            },
            {
                name: 'department',
                type: 'input',
                message: 'Enter the roles department ID here: '
            }
        ]).then(function (res) {
            let query = 'INSERT INTO role SET ?';
            connection.query(
                query, {
                title: res.title,
                salary: res.salary,
                department_id: res.department
            },
                (err) => {
                    if (err) throw err;
                    console.table(res);
                    console.log('Role successfully Created!')
                    startPrompts();
                }
            )
        })
}

const addEmployee = () => {
    inquirer
        .prompt([
            {
                name: 'firstName',
                type: 'input',
                message: 'Enter employees first name: '
            },
            {
                name: 'lastName',
                type: 'input',
                message: 'Enter employees last name here: '
            },
            {
                name: 'roleId',
                type: 'input',
                message: 'Enter the employees rold ID here: ',
            },
        ]).then(function (res) {
            let query = 'INSERT INTO employee SET ?';
            connection.query(
                query, {
                first_name: res.firstName,
                last_name: res.lastName,
                role_id: res.roleId
            },
                (err) => {
                    if (err) throw err;
                    console.table(res);
                    console.log('Employee successfully added!')
                    startPrompts();
                }
            )
        })
}

const updateEmployeeRole = () => {
    inquirer
        .prompt([
            {
                name: 'updatedEmployee',
                type: 'input',
                message: 'Enter the id of the employee you wish to update here: '
            },
            {
                name: 'updatedRole',
                type: 'input',
                message: 'Enter the new role you would like assigned to the employee here: '
            }
        ]).then(function (res) {
            connection.query(
                `UPDATE employee SET role_id = ${res.updatedRole} WHERE id = ${res.updatedEmployee}`
            );

            (err) => {
                if (err) throw err;
                console.table(res);
                console.log('Employee successfully updated!')
                startPrompts();
            }

        })
}