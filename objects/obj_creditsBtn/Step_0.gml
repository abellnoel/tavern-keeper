/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 314C475B
/// @DnDArgument : "code" "//checks if the mouse is not pressed$(13_10)if (!mouse_check_button_pressed(mb_left)) {$(13_10)	//checks the position of the mouse coords inside of the credits button$(13_10)	if (position_meeting(mouse_x, mouse_y, obj_creditsBtn)) {$(13_10)		//changes to different index image and scales up image$(13_10)		obj_creditsBtn.image_index = 1;$(13_10)		if(obj_creditsBtn.image_xscale <= 1.15) {$(13_10)			obj_creditsBtn.image_xscale += .01;$(13_10)			obj_creditsBtn.image_yscale += .01;$(13_10)		}$(13_10)	$(13_10)	$(13_10)	} else {$(13_10)		if(room == roomHomeScreen){$(13_10)			//changes to different index image and scales down image$(13_10)			obj_creditsBtn.image_index = 0;$(13_10)			if(obj_creditsBtn.image_xscale >= 1.0) {$(13_10)				obj_creditsBtn.image_xscale -= .01;$(13_10)				obj_creditsBtn.image_yscale -= .01;$(13_10)			}$(13_10)		}$(13_10)$(13_10)	}$(13_10)} else {$(13_10)	//checks if mouse coords are meeting in position$(13_10)	if(position_meeting(mouse_x, mouse_y, obj_creditsBtn)){$(13_10)		//go to credits room$(13_10)		room_goto(roomCreditsScreen);$(13_10)	} 	$(13_10)}"
//checks if the mouse is not pressed
if (!mouse_check_button_pressed(mb_left)) {
	//checks the position of the mouse coords inside of the credits button
	if (position_meeting(mouse_x, mouse_y, obj_creditsBtn)) {
		//changes to different index image and scales up image
		obj_creditsBtn.image_index = 1;
		if(obj_creditsBtn.image_xscale <= 1.15) {
			obj_creditsBtn.image_xscale += .01;
			obj_creditsBtn.image_yscale += .01;
		}
	
	
	} else {
		if(room == roomHomeScreen){
			//changes to different index image and scales down image
			obj_creditsBtn.image_index = 0;
			if(obj_creditsBtn.image_xscale >= 1.0) {
				obj_creditsBtn.image_xscale -= .01;
				obj_creditsBtn.image_yscale -= .01;
			}
		}

	}
} else {
	//checks if mouse coords are meeting in position
	if(position_meeting(mouse_x, mouse_y, obj_creditsBtn)){
		//go to credits room
		room_goto(roomCreditsScreen);
	} 	
}