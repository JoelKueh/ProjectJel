const net = require('net')
const PORT = 23282
const HOST = 'localhost'

client = new net.Socket();

client.connect(PORT, HOST, function() {
    console.log('Connected')
    client.write('Hello From Client ' + client.address().address)
})