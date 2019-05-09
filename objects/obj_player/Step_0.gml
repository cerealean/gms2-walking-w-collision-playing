var slowWalkModifier = keyboard_check(vk_control) ? -1 : 0;
var runModifier = keyboard_check(vk_shift) ? 2 : 0;
moveSpeed = obj_game.defaultPlayerMoveSpeed + slowWalkModifier + runModifier;
var moveY = (keyboard_check(vk_down) - keyboard_check(vk_up)) * moveSpeed;
var moveX = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpeed;
var moveXSign = sign(moveX);
var moveYSign = sign(moveY);

repeat(abs(moveX)) {
	if(!place_meeting(x + (moveXSign * 1), y, obj_character)) {
		x += moveXSign * 1;	
	} else {
		break;
	}
}

repeat(abs(moveY)) {
	if(!place_meeting(x, y + (moveYSign * 1), obj_character)) {
		y += (moveYSign * 1);
	} else {
		break;
	}
}

if(moveY == 0 && moveX == 0) {
	sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);	
}