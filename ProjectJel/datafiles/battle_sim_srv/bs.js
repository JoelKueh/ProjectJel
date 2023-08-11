const {Dex} = require('pokemon-showdown');
const {Teams} = require('pokemon-showdown');
const Sim = require('pokemon-showdown');
const fs = require('fs');

let stream = new Sim.BattleStream();
var player = Teams.import(fs.readFileSync('./../teams/_player.txt'));

// DEBUG
start_battle();

// (async () => {
//   for await (const output of stream) {
//     console.log(output);
//   }
// })();

function start_battle(team_id) {
	stream.write('>start {"formatid":"[Gen 8] National Dex AG"}');
	stream.write(`>player p1 {"name":"Player","team":${packed_player()}}`);
	stream.write(`>player p2 {"name":"AI","team":${packed_opp(team_id)}}`);
}

function packed_player() {
	return Teams.pack(player);
}

function packed_op(team_id) {
	var op = Teams.import(fs.readFileSync('./../teams/' + team_id + '.txt'));
	return Teams.pack(op);
}
