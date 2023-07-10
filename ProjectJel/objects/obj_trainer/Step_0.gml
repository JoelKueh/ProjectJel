if(place_meeting(x,y, Player)){
	if(myTextbox == noone){
	global.TrainerID = instance_id_get(obj_trainer);
	myTextbox = instance_create_layer(x+200,y+200, "Text", oTextBox);
	global.textUp = true;
	}
}	else {
	if(myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	
	
	}	
}


if(keyboard_check(vk_space) && place_meeting(x,y, Player)){
	global.textUp = false;	
	if(myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	instance_destroy();
	}
	
	Encounter_X = Player.x;
	Encounter_Y = Player.y;
	Encounter_Room = room;
			
			//goto encounter
	
}
	 
	 		