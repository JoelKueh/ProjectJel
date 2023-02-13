function PlayerCollisionU(){
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x, y - 16))
	{
		_collision = true;
	}
	
	return _collision;
}