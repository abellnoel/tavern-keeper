/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58D01612
/// @DnDArgument : "code" "draw_self();$(13_10)//debug tool: true to enable and false to disable.$(13_10)//This draws the path it is taking$(13_10)if (false) {$(13_10)	if(instance_exists(obj_pointer)) {$(13_10)		if(playerPath != undefined){$(13_10)			draw_path(playerPath, x, y, true);$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)"
draw_self();
//debug tool: true to enable and false to disable.
//This draws the path it is taking
if (false) {
	if(instance_exists(obj_pointer)) {
		if(playerPath != undefined){
			draw_path(playerPath, x, y, true);
		}
	}
}