/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F523FCE
/// @DnDArgument : "code" "//only runs until rugMove is false, then never again$(13_10)if (rugMove and distance_to_point(rugX, rugY) > moveOffset) { $(13_10)	move_towards_point(rugX, rugY, spd); $(13_10)}$(13_10)else if (rugMove) {$(13_10)	speed = 0;$(13_10)	rugMove = false;$(13_10)}$(13_10)"
//only runs until rugMove is false, then never again
if (rugMove and distance_to_point(rugX, rugY) > moveOffset) { 
	move_towards_point(rugX, rugY, spd); 
}
else if (rugMove) {
	speed = 0;
	rugMove = false;
}