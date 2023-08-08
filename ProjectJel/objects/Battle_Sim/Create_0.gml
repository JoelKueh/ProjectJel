// Starts the Battle Server via the DLL
Battle_Sim_Output = Start_Battle_Srv();
show_message(Battle_Sim_Output);
sp = sprite_add("battle_backgrounds/cave_bb.png",1,false,false,0,0);

// Creates the socket to communicate with the battle server.
// All information is communicated via text stream.
PORT = 23282;
HOST = "localhost";

// Create the socket
client_socket = network_create_socket(network_socket_udp);
var server = network_connect(client_socket, HOST, PORT);
if server < 0
{
	// CONNECTION FAILED, HANDLE ERROR
}
else
{
	// CONNECTED PROPERLY
}