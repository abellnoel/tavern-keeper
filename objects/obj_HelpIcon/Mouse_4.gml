/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 41D2FB54
/// @DnDArgument : "code" "instance_create_layer(0, 0, "instances", obj_HowToPlayPanel);$(13_10)instance_create_layer(584, 620, "instances", obj_arrowIcon);$(13_10)instance_create_layer(600, 32, "instances", obj_exitIcon);$(13_10)$(13_10)//Destroys buttons when on how to play screen once help icon $(13_10)//is clicked.$(13_10)if(room == roomHomeScreen) {$(13_10)	instance_destroy(obj_playBtn);$(13_10)	instance_destroy(obj_creditsBtn);$(13_10)	instance_destroy(obj_exitBtn);$(13_10)}$(13_10)$(13_10)instance_destroy();"
instance_create_layer(0, 0, "instances", obj_HowToPlayPanel);
instance_create_layer(584, 620, "instances", obj_arrowIcon);
instance_create_layer(600, 32, "instances", obj_exitIcon);

//Destroys buttons when on how to play screen once help icon 
//is clicked.
if(room == roomHomeScreen) {
	instance_destroy(obj_playBtn);
	instance_destroy(obj_creditsBtn);
	instance_destroy(obj_exitBtn);
}

instance_destroy();