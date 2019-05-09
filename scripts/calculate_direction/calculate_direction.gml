/// @function calculate_direction(direction)
/// @param {real} direction A number between 0 and 359
/// @description Returns the enum value of direction (dir)

if(argument0 >= 45 && argument0 < 135) {
	return dir.Up;	
} else if(argument0 >=135 && argument0 < 225) {
	return dir.Left;	
} else if(argument0 >= 225 && argument0 < 315) {
	return dir.Down;	
} else {
	return dir.Right;	
}