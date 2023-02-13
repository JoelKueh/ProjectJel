var _callback = function execute_input() {
	script_execute(current_dir);	
}

if (input != undefined){
	current_dir = input;
	for (var i = 0; i < 16; i++) {
		call_later(i, time_source_units_frames, _callback, false);
	}
	
	//if(CollisionR == false && CollisionL == false && CollisionU == false && CollisionD == false){
	alarm[0] = alarm_interval;
	//}
}