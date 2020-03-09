/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33F8F4B1
/// @DnDArgument : "code" "/// @desc MOVEMENT$(13_10)//store location of mouse click$(13_10)walk = true;$(13_10)xClick = mouse_x; $(13_10)yClick = mouse_y; $(13_10)instance_destroy(obj_pointer);$(13_10)instance_create_layer(xClick, yClick, "Instances", obj_pointer);"
/// @desc MOVEMENT
//store location of mouse click
walk = true;
xClick = mouse_x; 
yClick = mouse_y; 
instance_destroy(obj_pointer);
instance_create_layer(xClick, yClick, "Instances", obj_pointer);