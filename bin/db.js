const mysql = require("mysql")
const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "1111",
    database: "study",
})

connection.connect()
module.exports = connection
