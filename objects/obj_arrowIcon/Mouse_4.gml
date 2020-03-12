/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C4CD4B9
/// @DnDArgument : "code" "//checks image index of how to play$(13_10)if (obj_HowToPlayPanel.image_index == 0) {$(13_10)	//set image index to 1$(13_10)	obj_HowToPlayPanel.image_index = 1;$(13_10)	//rotate the arrow object$(13_10)	image_angle = 180;$(13_10)	//change x coords$(13_10)	x = 36;$(13_10)} else {$(13_10)	//set image index to 0$(13_10)	obj_HowToPlayPanel.image_index = 0;$(13_10)	//rotate the arrow object$(13_10)	image_angle = 0;$(13_10)	//change x coords$(13_10)	x = 584;$(13_10)}"
//checks image index of how to play
if (obj_HowToPlayPanel.image_index == 0) {
	//set image index to 1
	obj_HowToPlayPanel.image_index = 1;
	//rotate the arrow object
	image_angle = 180;
	//change x coords
	x = 36;
} else {
	//set image index to 0
	obj_HowToPlayPanel.image_index = 0;
	//rotate the arrow object
	image_angle = 0;
	//change x coords
	x = 584;
}