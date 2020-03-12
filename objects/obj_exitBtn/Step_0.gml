/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1A456A2D
/// @DnDArgument : "code" "//checks if the mouse is not pressed$(13_10)if (!mouse_check_button_pressed(mb_left)) {$(13_10)	//checks the position of the mouse coords inside of the exit button$(13_10)	if (position_meeting(mouse_x, mouse_y, obj_exitBtn)) {$(13_10)		//changes to different index image and scales up image$(13_10)		obj_exitBtn.image_index = 1;$(13_10)		if(obj_exitBtn.image_xscale <= 1.15) {$(13_10)			obj_exitBtn.image_xscale += .01;$(13_10)			obj_exitBtn.image_yscale += .01;$(13_10)		}$(13_10)	$(13_10)	$(13_10)	} else {$(13_10)		if(room == roomHomeScreen){$(13_10)			//changes to different index image and scales down image$(13_10)			obj_exitBtn.image_index = 0;$(13_10)			if(obj_exitBtn.image_xscale >= 1.0) {$(13_10)				obj_exitBtn.image_xscale -= .01;$(13_10)				obj_exitBtn.image_yscale -= .01;$(13_10)			}$(13_10)		}$(13_10)$(13_10)	}$(13_10)} else {$(13_10)	//checks if mouse coords are meeting in position$(13_10)	if(position_meeting(mouse_x, mouse_y, obj_exitBtn)){$(13_10)		game_end(); //end game$(13_10)	} $(13_10)	$(13_10)}"
//checks if the mouse is not pressed
if (!mouse_check_button_pressed(mb_left)) {
	//checks the position of the mouse coords inside of the exit button
	if (position_meeting(mouse_x, mouse_y, obj_exitBtn)) {
		//changes to different index image and scales up image
		obj_exitBtn.image_index = 1;
		if(obj_exitBtn.image_xscale <= 1.15) {
			obj_exitBtn.image_xscale += .01;
			obj_exitBtn.image_yscale += .01;
		}
	
	
	} else {
		if(room == roomHomeScreen){
			//changes to different index image and scales down image
			obj_exitBtn.image_index = 0;
			if(obj_exitBtn.image_xscale >= 1.0) {
				obj_exitBtn.image_xscale -= .01;
				obj_exitBtn.image_yscale -= .01;
			}
		}

	}
} else {
	//checks if mouse coords are meeting in position
	if(position_meeting(mouse_x, mouse_y, obj_exitBtn)){
		game_end(); //end game
	} 
	
}