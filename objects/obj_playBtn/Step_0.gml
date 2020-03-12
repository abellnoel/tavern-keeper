/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7609EFA7
/// @DnDArgument : "code" "//checks if the mouse is not pressed$(13_10)if(!mouse_check_button_pressed(mb_left)) {$(13_10)	//checks the position of the mouse coords inside of the play button$(13_10)	if (position_meeting(mouse_x, mouse_y, obj_playBtn)) {$(13_10)		//changes to different index image and scales up image$(13_10)		obj_playBtn.image_index = 1;$(13_10)		if(obj_playBtn.image_xscale <= 1.15) {$(13_10)			obj_playBtn.image_xscale += .01;$(13_10)			obj_playBtn.image_yscale += .01;$(13_10)		}$(13_10)	$(13_10)	$(13_10)	} else {$(13_10)		if(room == roomHomeScreen){$(13_10)			//changes to different index image and scales down image$(13_10)			obj_playBtn.image_index = 0;$(13_10)			if(obj_playBtn.image_xscale >= 1.0) {$(13_10)				obj_playBtn.image_xscale -= .01;$(13_10)				obj_playBtn.image_yscale -= .01;$(13_10)			}$(13_10)		}$(13_10)$(13_10)	}$(13_10)} else {$(13_10)	//checks if mouse coords are meeting in position$(13_10)	if(position_meeting(mouse_x, mouse_y, obj_playBtn)){$(13_10)		room_goto(roomTavern); // go to roomTavern$(13_10)	} $(13_10)	$(13_10)}"
//checks if the mouse is not pressed
if(!mouse_check_button_pressed(mb_left)) {
	//checks the position of the mouse coords inside of the play button
	if (position_meeting(mouse_x, mouse_y, obj_playBtn)) {
		//changes to different index image and scales up image
		obj_playBtn.image_index = 1;
		if(obj_playBtn.image_xscale <= 1.15) {
			obj_playBtn.image_xscale += .01;
			obj_playBtn.image_yscale += .01;
		}
	
	
	} else {
		if(room == roomHomeScreen){
			//changes to different index image and scales down image
			obj_playBtn.image_index = 0;
			if(obj_playBtn.image_xscale >= 1.0) {
				obj_playBtn.image_xscale -= .01;
				obj_playBtn.image_yscale -= .01;
			}
		}

	}
} else {
	//checks if mouse coords are meeting in position
	if(position_meeting(mouse_x, mouse_y, obj_playBtn)){
		room_goto(roomTavern); // go to roomTavern
	} 
	
}