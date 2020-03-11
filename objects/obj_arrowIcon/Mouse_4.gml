/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C4CD4B9
/// @DnDArgument : "code" "if (obj_HowToPlayPanel.image_index == 0) {$(13_10)	obj_HowToPlayPanel.image_index = 1;$(13_10)	image_angle = 180;$(13_10)	x = 36;$(13_10)} else {$(13_10)	obj_HowToPlayPanel.image_index = 0;$(13_10)	image_angle = 0;$(13_10)	x = 584;$(13_10)}"
if (obj_HowToPlayPanel.image_index == 0) {
	obj_HowToPlayPanel.image_index = 1;
	image_angle = 180;
	x = 36;
} else {
	obj_HowToPlayPanel.image_index = 0;
	image_angle = 0;
	x = 584;
}