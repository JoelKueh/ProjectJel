const ws = require('ws')
const PORT = 23282
const HOST = 'localhost'

client = new ws.WebSocket(`ws://${HOST}:${PORT}`);

client.on('message', msg => console.log(msg));