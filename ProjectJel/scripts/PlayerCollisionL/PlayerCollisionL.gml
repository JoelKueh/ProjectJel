
function PlayerCollisionL(){
	var _collision = false;
	
	if (tilemap_get_at_pixel(collisionMap, x - 16, y))
	{
		_collision = true;
	}
	
	return _collision;
}