/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E84C1EC
/// @DnDArgument : "code" "draw_self();$(13_10)if (controller.adminTool) {$(13_10)	draw_text(x, y, string(occupied));$(13_10)}"
draw_self();
if (controller.adminTool) {
	draw_text(x, y, string(occupied));
}