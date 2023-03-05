const { Router } = require('express');
const router = Router();

const mysqlConnection = require('../database/database');

router.get('/', (req, res) => {
	res.status(200).json('Server on port 8000 and database is connected');
});

router.get('/:users', (req, res) => {
	mysqlConnection.query('select * from users;', (error, rows, fields) => {
		if (!error) {
			res.json(rows);
		} else {
			console.log(error);
		}
	});
});

router.get('/:users/:id', (req, res) => {
	const {id} = req.params;
	mysqlConnection.query('select * from users where id = ?;', [id], (error, rows, fields) => {
		if (!error) {
			res.json(rows);
		} else {
			console.log(error);
		}
	});
});

router.post('/:users', (req, res) => {
	const {username, name, lastname, mail, randomstr, hash} = req.body;
	console.log(req.body);
	mysqlConnection.query('insert into users(username, name, lastname, mail, randomstr, hash) values (?,?,?,?,?,?);', 
		[username, name, lastname, mail, randomstr, hash], (error, rows, fields) => {
			if (!error) {
				res.json({Status: 'User saved'});
			} else {
				console.log(error);
			}
		});
});

router.put('/:users/:id', (req, res) => {
	const {id, username, name , lastname, mail, randomstr, hash} = req.body;
	console.log(req.body);
	mysqlConnection.query('update users set username = ?, name = ?, lastname = ?, mail = ?, randomstr = ?, hash = ? where id = ?;',
		[username, name, lastname, mail, randomstr, hash, id], (error, rows, fields) => {
			if (!error) {
				res.json({Status: 'User updated'});
			} else {
				console.log(error);
			}
		});
});

router.delete('/:users/:id', (req, res) => {
	const {id} = req.params;
	mysqlConnection.query('delete from users where id = ?;', [id], (error, rows, fields) => {
		if (!error) {
			res.json({Status: 'User deleted'})
		} else {
			console.log(error);
		}
	});
});

module.exports = router;
