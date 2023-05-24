function PlayerCollisionLedgeR(){
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMapLedgeR, x - 16, y))
	{
		_collision = true;
	}
	
	return _collision;
}