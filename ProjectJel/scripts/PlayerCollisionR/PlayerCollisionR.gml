function PlayerCollisionR(){
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(collisionMap, x + 16, y))
	{
		_collision = true;
	}
	
	return _collision;
}