
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
