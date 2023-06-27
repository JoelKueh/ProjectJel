// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GrassCollision(){
	var _collision = false;
	
	//Horizontal Tiles
	if (tilemap_get_at_pixel(encounterMap, x, y))
	{
		_collision = true;
	}
	
	return _collision;
}