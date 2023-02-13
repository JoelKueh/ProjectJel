var _callback = function execute_input() {
	script_execute(current_dir);	
}

if (input != undefined){
	if(input == move_right){
		CollisionR = PlayerCollisionR();
		CollisionLedgeL = PlayerCollisionLedgeL();
		if(CollisionR == false && CollisionLedgeL == false){
	current_dir = input;
	for (var i = 0; i < 16; i++) {
		call_later(i, time_source_units_frames, _callback, false);
	}
	
	alarm[0] = alarm_interval;
	input = undefined;
}
}
}
	
if (input != undefined){
	if(input == move_left){
		CollisionL = PlayerCollisionL();
		CollisionLedgeR = PlayerCollisionLedgeR();
		if(CollisionL == false && CollisionLedgeR == false){
	current_dir = input;
	for (var i = 0; i < 16; i++) {
		call_later(i, time_source_units_frames, _callback, false);
	}
	
	alarm[0] = alarm_interval;
	input = undefined;
}
}
}

if (input != undefined){
	if(input == move_up){
		CollisionU = PlayerCollisionU();
		CollisionLedgeD = PlayerCollisionLedgeD();
		if(CollisionU == false && CollisionLedgeD == false){
	current_dir = input;
	for (var i = 0; i < 16; i++) {
		call_later(i, time_source_units_frames, _callback, false);
	}
	
	alarm[0] = alarm_interval;
	input = undefined;
}
}
}

if (input != undefined){
	if(input == move_down){
		CollisionD = PlayerCollisionD();
		if(CollisionD == false){
	current_dir = input;
	for (var i = 0; i < 16; i++) {
		call_later(i, time_source_units_frames, _callback, false);
	}
	
	alarm[0] = alarm_interval;
	input = undefined;
}
}
}