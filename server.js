const mysql = require("mysql2");
require("console.table");

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'Regular#123',
    database: 'em_db'
});