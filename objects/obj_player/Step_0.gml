/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FBFFCF0
/// @DnDArgument : "code" "//moves player toward most recent mouse click (right click sets walk to true)$(13_10)if (walk) {$(13_10)	dir = point_direction(x, y, obj_pointer.x, obj_pointer.y);$(13_10)	xWalk = x + lengthdir_x(spd, dir);$(13_10)	yWalk = y + lengthdir_y(spd, dir);$(13_10)	if (place_free(xWalk, yWalk)) {$(13_10)		move_towards_point(obj_pointer.x, obj_pointer.y, spd);$(13_10)		//prevents constant adjusting to try to match pixelperfect coordinates$(13_10)		if (distance_to_point(obj_pointer.x, obj_pointer.y) < clickOffset) {$(13_10)			walk = false; $(13_10)			speed = 0;$(13_10)			instance_destroy(obj_pointer);$(13_10)		}$(13_10)	}$(13_10)	else {$(13_10)		walk = false;$(13_10)		speed = 0;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	speed = 0;$(13_10)}$(13_10)$(13_10)$(13_10)//change sprite direction based on movement direction$(13_10)if (speed != 0) { //if moving$(13_10)	//all cases are first direction inclusive$(13_10)	if (direction >= 315 || direction < 45) { //RIGHT$(13_10)		sprite_index = spr_WillRightWalk; $(13_10)	}$(13_10)	else if (direction >= 45 && direction < 135) { //UP$(13_10)		sprite_index = spr_WillUpWalk; $(13_10)	}$(13_10)	else if (direction >= 135 && direction < 225) { //LEFT$(13_10)		sprite_index = spr_WillLeftWalk; $(13_10)	}$(13_10)	else { //DOWN$(13_10)		sprite_index = spr_WillDownWalk;$(13_10)	}$(13_10)}$(13_10)else { //not moving, still sprites$(13_10)	//all cases are first direction inclusive$(13_10)	if (direction >= 315 || direction < 45) { //RIGHT$(13_10)		sprite_index = spr_WillRight; $(13_10)	}$(13_10)	else if (direction >= 45 && direction < 135) { //UP$(13_10)		sprite_index = spr_WillUp; $(13_10)	}$(13_10)	else if (direction >= 135 && direction < 225) { //LEFT$(13_10)		sprite_index = spr_WillLeft; $(13_10)	}$(13_10)	else { //DOWN$(13_10)		sprite_index = spr_WillDown;$(13_10)	}$(13_10)}$(13_10)$(13_10)//NEWWWWW$(13_10)//Serve state indicator follows player if there is an active indicator$(13_10)if (instance_exists(serveIndicator)) {$(13_10)	serveIndicator.x = x + 20;$(13_10)	serveIndicator.y = y - 40;$(13_10)}$(13_10)"
//moves player toward most recent mouse click (right click sets walk to true)
if (walk) {
	dir = point_direction(x, y, obj_pointer.x, obj_pointer.y);
	xWalk = x + lengthdir_x(spd, dir);
	yWalk = y + lengthdir_y(spd, dir);
	if (place_free(xWalk, yWalk)) {
		move_towards_point(obj_pointer.x, obj_pointer.y, spd);
		//prevents constant adjusting to try to match pixelperfect coordinates
		if (distance_to_point(obj_pointer.x, obj_pointer.y) < clickOffset) {
			walk = false; 
			speed = 0;
			instance_destroy(obj_pointer);
		}
	}
	else {
		walk = false;
		speed = 0;
	}
}
else {
	speed = 0;
}


//change sprite direction based on movement direction
if (speed != 0) { //if moving
	//all cases are first direction inclusive
	if (direction >= 315 || direction < 45) { //RIGHT
		sprite_index = spr_WillRightWalk; 
	}
	else if (direction >= 45 && direction < 135) { //UP
		sprite_index = spr_WillUpWalk; 
	}
	else if (direction >= 135 && direction < 225) { //LEFT
		sprite_index = spr_WillLeftWalk; 
	}
	else { //DOWN
		sprite_index = spr_WillDownWalk;
	}
}
else { //not moving, still sprites
	//all cases are first direction inclusive
	if (direction >= 315 || direction < 45) { //RIGHT
		sprite_index = spr_WillRight; 
	}
	else if (direction >= 45 && direction < 135) { //UP
		sprite_index = spr_WillUp; 
	}
	else if (direction >= 135 && direction < 225) { //LEFT
		sprite_index = spr_WillLeft; 
	}
	else { //DOWN
		sprite_index = spr_WillDown;
	}
}

//NEWWWWW
//Serve state indicator follows player if there is an active indicator
if (instance_exists(serveIndicator)) {
	serveIndicator.x = x + 20;
	serveIndicator.y = y - 40;
}