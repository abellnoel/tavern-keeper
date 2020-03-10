/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 314C475B
/// @DnDArgument : "code" "if (!mouse_check_button_pressed(mb_left)) {$(13_10)	if (position_meeting(mouse_x, mouse_y, obj_creditsBtn)) {$(13_10)		obj_creditsBtn.image_index = 1;$(13_10)		if(obj_creditsBtn.image_xscale <= 1.15) {$(13_10)			obj_creditsBtn.image_xscale += .01;$(13_10)			obj_creditsBtn.image_yscale += .01;$(13_10)		}$(13_10)	$(13_10)	$(13_10)	} else {$(13_10)		if(room == roomHomeScreen){$(13_10)			obj_creditsBtn.image_index = 0;$(13_10)			if(obj_creditsBtn.image_xscale >= 1.0) {$(13_10)				obj_creditsBtn.image_xscale -= .01;$(13_10)				obj_creditsBtn.image_yscale -= .01;$(13_10)			}$(13_10)		}$(13_10)$(13_10)	}$(13_10)} else {$(13_10)	if(position_meeting(mouse_x, mouse_y, obj_creditsBtn)){$(13_10)		room_goto(roomCreditsScreen);$(13_10)	} 	$(13_10)}"
if (!mouse_check_button_pressed(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_creditsBtn)) {
		obj_creditsBtn.image_index = 1;
		if(obj_creditsBtn.image_xscale <= 1.15) {
			obj_creditsBtn.image_xscale += .01;
			obj_creditsBtn.image_yscale += .01;
		}
	
	
	} else {
		if(room == roomHomeScreen){
			obj_creditsBtn.image_index = 0;
			if(obj_creditsBtn.image_xscale >= 1.0) {
				obj_creditsBtn.image_xscale -= .01;
				obj_creditsBtn.image_yscale -= .01;
			}
		}

	}
} else {
	if(position_meeting(mouse_x, mouse_y, obj_creditsBtn)){
		room_goto(roomCreditsScreen);
	} 	
}