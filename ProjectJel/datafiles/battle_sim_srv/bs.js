const {Dex} = require('pokemon-showdown');
const {Teams} = require('pokemon-showdown');
const Sim = require('pokemon-showdown');
const fs = require('fs');

let stream = new Sim.BattleStream();

// DEBUG
start_battle();

// (async () => {
//   for await (const output of stream) {
//     console.log(output);
//   }
// })();

function start_battle(team_id) {
	stream.write('>start {"formatid":"[Gen 8] National Dex AG"}');
	stream.write('>player p1 {"name":"Alice"}');
	stream.write('>player p2 {"name":"Bob"}');
}

function retrieve_player() {

}

function retrieve_opponent() {

}
