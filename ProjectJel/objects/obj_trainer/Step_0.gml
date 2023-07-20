if(place_meeting(x,y, Player)){
	if(myTextbox == noone){
	global.TrainerID = ID;
	myTextbox = instance_create_layer(x+200,y+200, "Text", oTextBox);
	global.textUp = true;
	}
}	else 
{
	if(myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	
	
	}	
}

if(keyboard_check(vk_space) == false)
{
	spaceReleased = true;
}

if(spaceReleased = true){
if(keyboard_check(vk_space) && place_meeting(x,y, Player)){
	spaceReleased = false;
	
	if(textDone != 1)
	{
		// Destroy Text Box
		if(myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		}
		
		// Create New Text Box
		ID += 500;
		global.TrainerID = ID;
		myTextbox = instance_create_layer(x+200,y+200, "Text", oTextBox);
	}
	
	
	if(textDone == 1)
	{	
		//Destroy Text Box
		global.textUp = false;	
		if(myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
		instance_destroy();
		}
		
		//Encounter
		Encounter_X = Player.x;
		Encounter_Y = Player.y;
		Encounter_Room = room;	
			//goto encounter
	
	}
	
	textDone -= 1;
}
}