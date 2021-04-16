const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'employeeDB'
});

connection.connect((err) => {
    if (err) throw err;
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
                'View All Employees by Department',
                'View All Employees by Manager',
                'Add Employee',
                'Remove Employee',
                'Update Employee Role',
                'Update Employee Manager',
            ],
        })
        .then((answer) => {
            switch (answer.action) {
                case 'View All Employees':
                    viewAllEmployees();
                    break;

                case 'View All Employees by Department':
                    viewAllEmployeesByDept();
                    break;

                case 'View All Employees by Manager':
                    viewAllEmployeesByManager();
                    break;

                case 'Add Employee':
                    addEmployee();
                    break;

                case 'Remove Employee':
                    removeEmployee();
                    break;

                case 'Update Employee Role':
                    updateEmployeeRole();
                    break;

                case 'Update Employee Manager':
                    updateEmployeeManager();
                    break;

                // ------FIXME:-----
                default:
                    console.log(`Invalid action: ${answer.action}`);
                    break;

            }
        })
}

// --------------FIXME:-----------------
const viewAllEmployees = () => {
    connection.query('SELECT * FROM employeeTable', (err, res) => {
        if (err) throw err;
        console.log(res);
        startPrompts();
    })
}

// --------------TODO:-----------------
const viewAllEmployeesByDept = () => {

}

// --------------TODO:-----------------
const viewAllEmployeesByManager = () => {

}

// --------------TODO:-----------------
const addEmployee = () => {

}

// --------------TODO:-----------------
const removeEmployee = () => {

}

// --------------TODO:-----------------
const updateEmployeeRole = () => {

}

// --------------TODO:-----------------
const updateEmployeeManager = () => {

}

