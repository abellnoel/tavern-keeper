/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3B854041
/// @DnDArgument : "code" "draw_self();$(13_10)if (controller.adminTool) {$(13_10)	draw_text(x, y, "R: " + string(Rcount)); $(13_10)	draw_text(x, y + 15, "B: " + string(Bcount));$(13_10)	draw_text(x, y + 30, "Y: " + string(Ycount));$(13_10)}"
draw_self();
if (controller.adminTool) {
	draw_text(x, y, "R: " + string(Rcount)); 
	draw_text(x, y + 15, "B: " + string(Bcount));
	draw_text(x, y + 30, "Y: " + string(Ycount));
}