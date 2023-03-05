const mysql = require('mysql');

const mysqlConnection = mysql.createConnection( {
	host: '127.0.0.1',
	user: 'root',
	password: 'KR@0726$',
	database: 'company'
});

mysqlConnection.connect(function (error) {
	if (error) {
		console.log(error);
		return;
	} else {
		console.log('Database is connected');
	} 
});

module.exports = mysqlConnection;
