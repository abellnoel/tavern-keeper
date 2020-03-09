/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FBFFCF0
/// @DnDArgument : "code" "//moves player toward most recent mouse click (right click sets walk to true)$(13_10)//change sprite direction based on movement direction$(13_10)if (walk) { //if walk is true$(13_10)	$(13_10)	//player coords near pointer coords by the clickOffset range$(13_10)	if (point_distance(x, y, obj_pointer.x, obj_pointer.y) < clickOffset) {$(13_10)		walk = false; //disables walk animation$(13_10)		instance_destroy(obj_pointer); //destroys pointer object$(13_10)	}$(13_10)	$(13_10)	//all cases are first direction inclusive$(13_10)	if (direction >= 315 || direction < 45) { //RIGHT$(13_10)		sprite_index = spr_WillRightWalk; $(13_10)	}$(13_10)	else if (direction >= 45 && direction < 135) { //UP$(13_10)		sprite_index = spr_WillUpWalk; $(13_10)	}$(13_10)	else if (direction >= 135 && direction < 225) { //LEFT$(13_10)		sprite_index = spr_WillLeftWalk; $(13_10)	}$(13_10)	else { //DOWN$(13_10)		sprite_index = spr_WillDownWalk;$(13_10)	}$(13_10)}$(13_10)else { //not moving, still sprites$(13_10)	//all cases are first direction inclusive$(13_10)	if (direction >= 315 || direction < 45) { //RIGHT$(13_10)		sprite_index = spr_WillRight; $(13_10)	}$(13_10)	else if (direction >= 45 && direction < 135) { //UP$(13_10)		sprite_index = spr_WillUp; $(13_10)	}$(13_10)	else if (direction >= 135 && direction < 225) { //LEFT$(13_10)		sprite_index = spr_WillLeft; $(13_10)	}$(13_10)	else { //DOWN$(13_10)		sprite_index = spr_WillDown;$(13_10)	}$(13_10)}$(13_10)$(13_10)//customer placement"
//moves player toward most recent mouse click (right click sets walk to true)
//change sprite direction based on movement direction
if (walk) { //if walk is true
	
	//player coords near pointer coords by the clickOffset range
	if (point_distance(x, y, obj_pointer.x, obj_pointer.y) < clickOffset) {
		walk = false; //disables walk animation
		instance_destroy(obj_pointer); //destroys pointer object
	}
	
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

//customer placement