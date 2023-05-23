input = undefined;
room_goto(targetRoom);
Player.x = targetX;
Player.y = targetY;

while(Player.x mod 16 != 0){
	Player.x -= 1;	
}

while(Player.y mod 16 != 0){
	Player.y -= 1;
}

Player.y += 8;
Player.x += 8;