/// @description Insert description here
// You can write your code in this editor

// Creates the socket to communicate with the battle server.
// All information is communicated via text stream.
port = 23282;
host = "localhost";

// Create the socket
show_debug_message("Connecting to Server")
client_socket = network_create_socket(network_socket_ws);
server = network_connect_raw_async(client_socket, host, port);

sp = sprite_add("battle_backgrounds/desert_bb.png",1,false,false,0,0);

width = 110;
height = 49;

x = 256 - width;
y = 192 - height;

bm_border = 0;
bm_space = 16;

bm_options[0] = "FIGHT";
bm_options[1] = "BAG";
bm_options[2] = "POKEMON";
bm_options[3] = "RUN";

bm_offsets[0] = [15, 7];
bm_offsets[1] = [15, 23];
bm_offsets[2] = [55, 7];
bm_offsets[3] = [55, 23];

global.bm_selected = 0;

enum STATE {
	BASIC,
	M_FIGHT,
	M_BAG,
	M_POKEMON,
	SIM_MSG
};

b_state = STATE.BASIC;