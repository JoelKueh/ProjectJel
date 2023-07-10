if(place_meeting(x,y, Player)){
	if(global.myTextbox == noone){
	global.TrainerID = instance_id_get(obj_trainer);
	global.myTextbox = instance_create_layer(x+200,y+200, "Text", oTextBox);
	global.textUp = true;
	}
}	else {
	if(global.myTextbox != noone){
	instance_destroy(global.myTextbox);
	global.myTextbox = noone;
	
	
	}	
}


if(keyboard_check(vk_space) && place_meeting(x,y, Player)){
	global.textUp = false;	
	if(global.myTextbox != noone){
	instance_destroy(global.myTextbox);
	global.myTextbox = noone;
	instance_destroy();
	}
	
	Encounter_X = Player.x;
	Encounter_Y = Player.y;
	Encounter_Room = room;
			
			//goto encounter
	
}
	 
	 		