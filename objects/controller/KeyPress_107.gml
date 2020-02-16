/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 509F480D
/// @DnDArgument : "code" "//increase window size by scale if not at max$(13_10)//assuming square window $(13_10)if (window_get_height() < maxWindowSize) {$(13_10)	windowX = window_get_height() + scaleFactor;$(13_10)	windowY = window_get_width() + scaleFactor;$(13_10)	window_set_size(windowX, windowY);$(13_10)}"
//increase window size by scale if not at max
//assuming square window 
if (window_get_height() < maxWindowSize) {
	windowX = window_get_height() + scaleFactor;
	windowY = window_get_width() + scaleFactor;
	window_set_size(windowX, windowY);
}