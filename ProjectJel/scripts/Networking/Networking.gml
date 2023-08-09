function send_string(_sock, _text, _event_name) {
	var _buffer = buffer_create(1, buffer_grow, 1);
	var _data = ds_map_create();
	_data[?"eventName"] = _event_name;
	_data[?"text"] = _text;
	
	buffer_write(_buffer, buffer_text, json_encode(_data));
	network_send_raw(_sock, _buffer, buffer_tell(_buffer));
	ds_map_destroy(_data);
}
	