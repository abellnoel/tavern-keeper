/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 305C7353
/// @DnDArgument : "code" "instance_destroy(obj_HowToPlayPanel);$(13_10)instance_destroy(obj_arrowIcon);$(13_10)instance_create_layer(576, 0, "instances", obj_HelpIcon);$(13_10)$(13_10)//Puts back the buttons back on homescreen$(13_10)if(room == roomHomeScreen) {$(13_10)	instance_create_layer(320, 224, "instances", obj_playBtn);$(13_10)	instance_create_layer(320, 320, "instances", obj_creditsBtn);$(13_10)	instance_create_layer(320, 416, "instances", obj_exitBtn);$(13_10)}$(13_10)$(13_10)instance_destroy();"
instance_destroy(obj_HowToPlayPanel);
instance_destroy(obj_arrowIcon);
instance_create_layer(576, 0, "instances", obj_HelpIcon);

//Puts back the buttons back on homescreen
if(room == roomHomeScreen) {
	instance_create_layer(320, 224, "instances", obj_playBtn);
	instance_create_layer(320, 320, "instances", obj_creditsBtn);
	instance_create_layer(320, 416, "instances", obj_exitBtn);
}

instance_destroy();