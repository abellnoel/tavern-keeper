/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 305C7353
/// @DnDArgument : "code" "instance_destroy(obj_HowToPlayPanel);$(13_10)instance_destroy(obj_arrowIcon);$(13_10)instance_create_layer(576, 0, "instances", obj_HelpIcon);$(13_10)instance_destroy();"
instance_destroy(obj_HowToPlayPanel);
instance_destroy(obj_arrowIcon);
instance_create_layer(576, 0, "instances", obj_HelpIcon);
instance_destroy();