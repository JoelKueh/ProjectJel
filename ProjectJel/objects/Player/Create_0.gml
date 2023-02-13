collisionMap = layer_tilemap_get_id(layer_get_id("Col"));
collisionMapLedge = layer_tilemap_get_id(layer_get_id("LedgeD"));
collisionMapLedgeL = layer_tilemap_get_id(layer_get_id("LedgeL"));
collisionMapLedgeR = layer_tilemap_get_id(layer_get_id("LedgeR"));

input = undefined;
alarm_interval = 16;
grid_unit_width = 16;
grid_unit_height = 16;

current_dir = undefined;