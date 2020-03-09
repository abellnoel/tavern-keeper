/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B8F047B
/// @DnDArgument : "code" "//debug tool that draws the grid and highlights objects that player cant go through$(13_10)//to enable write true and to disable it write false$(13_10)if(false) {$(13_10)	draw_set_alpha(.5);$(13_10)	mp_grid_draw(gridRoomTavern)$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)"
//debug tool that draws the grid and highlights objects that player cant go through
//to enable write true and to disable it write false
if(false) {
	draw_set_alpha(.5);
	mp_grid_draw(gridRoomTavern)
	draw_set_alpha(1);
}