const net = require('net');
const client = new net.Socket();
const port = 23282;
const host = 'localhost';

client.connect(port, host, function() {
    console.log('Connected');
    client.write("Hello From Client " + client.address().address);
});
