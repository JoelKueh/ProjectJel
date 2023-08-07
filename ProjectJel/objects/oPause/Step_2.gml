
if (global.gamePaused)
{
	keyUp = keyboard_check_pressed(vk_up);
	keyDown = keyboard_check_pressed(vk_down);
	pauseOptionSelected += (keyDown - keyUp);
	if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
	if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1; 
	
	keyActivate = keyboard_check_pressed(ord("Z"));
	if (keyActivate)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
				global.gamePaused = false;
				with (all)
				{
					global.gamePaused = false;
				}
			}break;
			
			case 1: //Party
			{
				
			}break;
			
			case 2: //Save
			{
				//SaveGame();
			}break;
			
			case 3: //Quit
			{
				//SaveGame();
				//QuitGame
			}break;
			
		}
	}
}