function PlayerCollisionD(){
	var _collision = false;
	
	//Vertical Tiles
	if (tilemap_get_at_pixel(collisionMap, x, y + 16))
	{
		_collision = true;
	}
	
	return _collision;
}