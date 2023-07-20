
if (global.gamePaused)
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,256,192,false);
	draw_set_alpha(1.0);
	draw_set_color(c_white);
	//draw_set_halign(fa_center);
	//draw_set_valign(fa_middle);
	
	draw_text(256 * 0.2, 192 * 0.2, "...Game Paused...");
	for (var i = 0; i < array_length(pauseOption); i++)
	{
		print = "";
		if (i == pauseOptionSelected)
		{
			print += "> " + pauseOption[i] + " <";
		}
		else
		{
			print += pauseOption[i];
			draw_set_alpha(0.7);
		}
		draw_text(256 * 0.2, 192 * 0.2 + 18 + (i * 12), print);
		draw_set_alpha(1.0);
	}
	
}