/// @description Set Display Properties

global.scr_width = 256;
global.scr_height = 192;

display_set_gui_size(global.scr_width, global.scr_height);

global.font_main = font_add_sprite(Emerald_Font, 32, true, 1);