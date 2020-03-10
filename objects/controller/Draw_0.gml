/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B8F047B
/// @DnDArgument : "code" "//debug tool that draws the grid and highlights objects that player cant go through$(13_10)//to enable write true and to disable it write false$(13_10)if(adminTool) {$(13_10)	draw_set_alpha(.5);$(13_10)	mp_grid_draw(gridRoomTavern)$(13_10)	draw_set_alpha(1);$(13_10)	//draws a single food and a single drink bubble bounding box$(13_10)	if (instance_exists(obj_foodBubble))$(13_10)		draw_rectangle(obj_foodBubble.bbox_left, obj_foodBubble.bbox_top, obj_foodBubble.bbox_right, obj_foodBubble.bbox_bottom, true);$(13_10)	if (instance_exists(obj_drinkBubble))$(13_10)		draw_rectangle(obj_drinkBubble.bbox_left, obj_drinkBubble.bbox_top, obj_drinkBubble.bbox_right, obj_drinkBubble.bbox_bottom, true);$(13_10)}$(13_10)"
//debug tool that draws the grid and highlights objects that player cant go through
//to enable write true and to disable it write false
if(adminTool) {
	draw_set_alpha(.5);
	mp_grid_draw(gridRoomTavern)
	draw_set_alpha(1);
	//draws a single food and a single drink bubble bounding box
	if (instance_exists(obj_foodBubble))
		draw_rectangle(obj_foodBubble.bbox_left, obj_foodBubble.bbox_top, obj_foodBubble.bbox_right, obj_foodBubble.bbox_bottom, true);
	if (instance_exists(obj_drinkBubble))
		draw_rectangle(obj_drinkBubble.bbox_left, obj_drinkBubble.bbox_top, obj_drinkBubble.bbox_right, obj_drinkBubble.bbox_bottom, true);
}