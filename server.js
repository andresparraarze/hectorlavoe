const mysql = require("mysql2");
require("console.table");
const inquirer = require("inquirer");

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Regular#123',
    database: 'em_db'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected" + connection.threadId);
    console.log(`
    .--------------------------------.
    |  ╔══╗ ╔══╗                     |
    |  ║  ╚═╝  ║                     | 
    |  ║ ╔╗ ╔╗ ╠══╦══╔══╦═══╦══╦══╗  |
    |  ║ ║║ ║║ ║╔╗║╔╗╣╔╗║╔╗ ║ ═╣ ╔╝  |
    |  ║ ║║ ║║ ║╔╗║║║║╔╗║╚╝ ║ ═╣ ║   |
    |  ╚═╝╚═╝╚═╩╝╚╩╝╚╩╝╚╩═╗ ╠══╩═╝   |
    |                   ╔═╝ ║        |
    |                   ╚═══╝        |
    .--------------------------------.
    `)
    work();
});

function work () {
    inquirer
    .prompt({
        type: "list",
        name: "task",
        message: "Choose an option",
        choices: [
          "View Employees",
          "View Employees by Department",
          "Add Employee",
          "Remove Employees",
          "Update Employee Role",
          "Add Role",
          "End"]
      })
      .then(function ({task}) {
        switch (task) {
          case "View Employees":
            viewEmployees();
            break;
  
          case "View Employees by Department":
            viewEmployeeByDepartment();
            break;
        
          case "Add Employee":
            addEmployee();
            break;
  
          case "Remove Employees":
            removeEmployees();
            break;
  
          case "Update Employee Role":
            updateEmployeeRole();
            break;
  
          case "Add Role":
            addRole();
            break;
  
          case "End":
            connection.end();
            break;
        }
      });
}
