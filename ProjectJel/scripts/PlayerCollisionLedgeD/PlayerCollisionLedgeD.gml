function PlayerCollisionLedgeD(){
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMapLedge, x, y - 16))
	{
		_collision = true;
	}
	
	return _collision;
}