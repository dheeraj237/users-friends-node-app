var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '123456',
    database: 'node_rest'
});
//connect the database
connection.connect((err) => {
    if (!err)
        console.log('[DB Connection] Connection Succeed...');
    else
        console.log('[DB Connection] Connection Failed...\n', JSON.stringify(err));
});

module.exports = connection;