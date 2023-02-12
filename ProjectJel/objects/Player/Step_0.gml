if (keyboard_check(vk_left)){
	input = move_left;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
else if (keyboard_check(vk_up)){
	input = move_up;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
else if (keyboard_check(vk_right)){
	input = move_right;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
else if (keyboard_check(vk_down)){
	input = move_down;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
else {
	input = undefined;
}

if(keyboard_check(vk_left) && keyboard_check(vk_right))
	input = undefined;
if(keyboard_check(vk_left) && keyboard_check(vk_up))
	input = undefined;	
if(keyboard_check(vk_left) && keyboard_check(vk_down))
	input = undefined;
if(keyboard_check(vk_right) && keyboard_check(vk_up))
	input = undefined;	
if(keyboard_check(vk_right) && keyboard_check(vk_down))
	input = undefined;
if(keyboard_check(vk_up) && keyboard_check(vk_down))
	input = undefined;