const { argv } = require('process');
const bstrm = require('bs.js');
import { Buffer } from 'node:buffer';

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
		console.log('DATA ' + sock.remoteAddress + ': ' + data);




setTimeout(() => {
  console.log("Delayed for 1 second.");
}, 5000)

setTimeout(() => {
  console.log("Delayed for 1 second.");
}, process.argv[2]);
