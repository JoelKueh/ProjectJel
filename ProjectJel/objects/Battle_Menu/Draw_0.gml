/// @description Fight Scene Drawing


draw_set_font(global.font_main);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_black);

if (b_state == STATE.BASIC) {
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
	draw_sprite(sp, 1, 0, 0);
	
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_black);

	draw_text(x + bm_offsets[0][0], y + bm_offsets[0][1], bm_options[0]);
	draw_text(x + bm_offsets[1][0], y + bm_offsets[1][1], bm_options[1]);
	draw_text(x + bm_offsets[2][0], y + bm_offsets[2][1], bm_options[2]);
	draw_text(x + bm_offsets[3][0], y + bm_offsets[3][1], bm_options[3]);

	draw_text(x + bm_offsets[global.bm_selected][0] - 7, y + bm_offsets[global.bm_selected][1], "&")
} else if (b_state == STATE.M_FIGHT) {
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
	draw_sprite(sp, 1, 0, 0);
} else if (b_state == STATE.M_BAG) {
	
} else if (b_state == STATE.M_POKEMON) {
	
} else if (b_state == STATE.SIM_MSG) {
	draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);
	draw_sprite(sp, 1, 0, 0);
}

