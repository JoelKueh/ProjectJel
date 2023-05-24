const { argv } = require('process');
const bstrm = require('./bs.js');
const { Buffer } = require('buffer');

const net = require('net');
const host = 'localhost';
const port = 23282;

const server = net.createServer();
server.listen(port, host, () => {
	// DEBUG
	console.log('TCP Server is running on port ' + port + '.');
});

let sockets = [];
server.on('connection', function(sock) {
	console.log('CON: ' + sock.remoteAddress + ':' + sock.remotePort);
	sockets.push(sock);

	if (sockets.length > 1) {
		console.log('MORE THAN ON CLIENT IS CURRENTLY CONNECTED');
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
});

setTimeout(() => {
  console.log("Delayed for 1 second.");
}, 5000)

setTimeout(() => {
  console.log("Delayed for 1 second.");
}, process.argv[2]);
