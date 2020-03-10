/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7322AF42
/// @DnDArgument : "code" "draw_self(); $(13_10)if (controller.adminTool) {$(13_10)	if (instance_exists(bubble))$(13_10)		draw_rectangle(bubble.bbox_left, bubble.bbox_top, bubble.bbox_right, bubble.bbox_bottom, true);$(13_10)}"
draw_self(); 
if (controller.adminTool) {
	if (instance_exists(bubble))
		draw_rectangle(bubble.bbox_left, bubble.bbox_top, bubble.bbox_right, bubble.bbox_bottom, true);
}