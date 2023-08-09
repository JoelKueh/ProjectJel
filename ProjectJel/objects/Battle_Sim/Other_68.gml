switch(async_load[?"type"]) {
	case network_type_non_blocking_connect:
		// Code that executes when we have connected
		show_debug_message("Connection Successful");
		send_string(client_socket, "Hello World", "TEST");
		break;
	
	case network_type_data:
		break;
}