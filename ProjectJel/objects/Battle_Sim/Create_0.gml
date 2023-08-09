// Creates the socket to communicate with the battle server.
// All information is communicated via text stream.
port = 23282;
host = "localhost";

// Create the socket
show_debug_message("Connecting to Server")
client_socket = network_create_socket(network_socket_ws);
server = network_connect_raw_async(client_socket, host, port);

sp = sprite_add("battle_backgrounds/cave_bb.png",1,false,false,0,0);