/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 45BA86EC
/// @DnDArgument : "code" "//check if fullscreened/not fullscreened, toggles$(13_10)if window_get_fullscreen() {$(13_10)	window_set_fullscreen(false); $(13_10)}$(13_10)else {$(13_10)	window_set_fullscreen(true);$(13_10)}"
//check if fullscreened/not fullscreened, toggles
if window_get_fullscreen() {
	window_set_fullscreen(false); 
}
else {
	window_set_fullscreen(true);
}