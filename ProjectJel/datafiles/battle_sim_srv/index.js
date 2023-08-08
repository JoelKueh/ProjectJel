const { argv } = require('process');
const bstrm = require('./bs.js');

const net = require('net');
const HOST = 'localhost';
const PORT = 23282;

const server = net.createServer();
server.listen(PORT, HOST, () => {
	// DEBUG
	console.log('TCP Server is running on port ' + PORT + '.');
});

let sockets = [];
server.on('connection', function(sock) {
	console.log('CON: ' + sock.remoteAddress + ':' + sock.remotePort);
	sockets.push(sock);

	if (sockets.length > 1) {
		console.log('MORE THAN ONE CLIENT IS CURRENTLY CONNECTED');
		console.log('PREVIOUS CLIENT WAS NOT KILLED PROPPERLY');
	}

	sock.on('data', function(data) {
		// DEBUG
		console.log('DATA ' + sock.remoteAddress + ': ' + data);
		sockets.forEach(function(sock, index, array) {
			sock.write(sock.remoteAddress + ':' + sock.remotePort + " said " + data + '\n');
		});
	});

	sock.on('close', function(data) {
		let index = sockets.findIndex(function(o) {
			return o.remoteAddress === sock.remoteAddress && o.remotePort === sock.remotePort;
		})
		if (index !== -1) sockets.splice(index, 1);
		console.log('CLOSED: ' + sock.remoteAddress + ' ' + sock.remotePort);
	});

	sock.on('error', (err) => {
		if (err.code === 'ECONNRESET') {
			console.log('Connection reset by peer');
		} else {
			console.log(`Unexpected error: ${err.code}`);
			throw err;
		}
	})
});

setTimeout(() => {
  console.log("Delayed for 1 second.");
}, 5000)