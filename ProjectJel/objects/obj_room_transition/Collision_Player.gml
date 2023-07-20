input = undefined;

instance_create_depth(0, 0, -9999, obj_fade);

room_goto(targetRoom);
Player.x = targetX;
Player.y = targetY;

while(Player.x mod 16 != 0){
	Player.x -= 1;	
}

while(Player.y mod 16 != 0){
	Player.y -= 1;
}

Player.y += plusY;
Player.x += plusX;