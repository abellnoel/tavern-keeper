/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7609EFA7
/// @DnDArgument : "code" "if(!mouse_check_button(mb_left)) {$(13_10)	if (position_meeting(mouse_x, mouse_y, obj_playBtn)) {$(13_10)		obj_playBtn.image_index = 1;$(13_10)		if(obj_playBtn.image_xscale <= 1.15) {$(13_10)			obj_playBtn.image_xscale += .01;$(13_10)			obj_playBtn.image_yscale += .01;$(13_10)		}$(13_10)	$(13_10)	$(13_10)	} else {$(13_10)		if(room == roomHomeScreen){$(13_10)			obj_playBtn.image_index = 0;$(13_10)			if(obj_playBtn.image_xscale >= 1.0) {$(13_10)				obj_playBtn.image_xscale -= .01;$(13_10)				obj_playBtn.image_yscale -= .01;$(13_10)			}$(13_10)		}$(13_10)$(13_10)	}$(13_10)} else {$(13_10)	$(13_10)	if(position_meeting(mouse_x, mouse_y, obj_playBtn)){$(13_10)		room_goto(roomTavern);$(13_10)	} $(13_10)	$(13_10)}"
if(!mouse_check_button(mb_left)) {
	if (position_meeting(mouse_x, mouse_y, obj_playBtn)) {
		obj_playBtn.image_index = 1;
		if(obj_playBtn.image_xscale <= 1.15) {
			obj_playBtn.image_xscale += .01;
			obj_playBtn.image_yscale += .01;
		}
	
	
	} else {
		if(room == roomHomeScreen){
			obj_playBtn.image_index = 0;
			if(obj_playBtn.image_xscale >= 1.0) {
				obj_playBtn.image_xscale -= .01;
				obj_playBtn.image_yscale -= .01;
			}
		}

	}
} else {
	
	if(position_meeting(mouse_x, mouse_y, obj_playBtn)){
		room_goto(roomTavern);
	} 
	
}