CollisionL = PlayerCollisionL();
CollisionR = PlayerCollisionR();
CollisionD = PlayerCollisionD();
CollisionU = PlayerCollisionU();
CollisionLedgeD = PlayerCollisionLedgeD();
CollisionLedgeL = PlayerCollisionLedgeL();
CollisionLedgeR = PlayerCollisionLedgeR();
if(CollisionL == false && CollisionLedgeR == false){
if (keyboard_check(vk_left)){
	input = move_left;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
}
if(CollisionU == false && CollisionLedgeD == false){
if (keyboard_check(vk_up)){
	input = move_up;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
}
if(CollisionR == false && CollisionLedgeL == false){
if (keyboard_check(vk_right)){
	input = move_right;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
}
if (CollisionD == false){
if (keyboard_check(vk_down)){
	input = move_down;
	if (alarm[0] == -1)
		alarm[0] = 1;
}
}
if (!keyboard_check(vk_down) && !keyboard_check(vk_up) && !keyboard_check(vk_left) && !keyboard_check(vk_right)){
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