/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68D182B0
/// @DnDArgument : "code" "//DELIVERING FOOD$(13_10)//select$(13_10)bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_foodBubble);$(13_10)instance_destroy(bubbleAtMouse);"
//DELIVERING FOOD
//select
bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_foodBubble);
instance_destroy(bubbleAtMouse);