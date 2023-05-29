input = undefined;
stopMoving = true;
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

collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
collisionMapLedge = layer_tilemap_get_id(layer_get_id("LedgeD"));
collisionMapLedgeL = layer_tilemap_get_id(layer_get_id("LedgeL"));
collisionMapLedgeR = layer_tilemap_get_id(layer_get_id("LedgeR"));

stopMoving = false;