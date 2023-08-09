const { argv } = require('process');
const bstrm = require('./bs.js');

const ws = require('ws');
const HOST = 'localhost';
const PORT = 23282;

const wss = new ws.WebSocketServer({ port: PORT });

let sockets = [];
wss.on('connection', function(ws) {
	console.log('CONNECTED');
	sockets.push(ws);

	if (sockets.length > 1) {
		console.log('MORE THAN ONE CLIENT IS CURRENTLY CONNECTED');
		console.log('PREVIOUS CLIENT WAS NOT KILLED PROPPERLY');
	}

	ws.on('message', function(data) {
		console.log(`Client sent us ${data}`);
	});

	ws.on('close', function(data) {
		sockets.pop();
		console.log('CLOSED');
	});

	ws.on('error', (err) => {
		if (err.code === 'ECONNRESET') {
			console.log('Connection reset by peer');
		} else {
			console.log(`Unexpected error: ${err.code}`);
			throw err;
		}
	})
});