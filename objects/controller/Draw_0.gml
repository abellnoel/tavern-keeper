/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B8F047B
/// @DnDArgument : "code" "//debug tool that draws the grid and highlights objects that player cant go through$(13_10)//to enable write true and to disable it write false$(13_10)if(adminTool) {$(13_10)	draw_set_alpha(.5);$(13_10)	mp_grid_draw(gridRoomTavern)$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)if(room == roomTavern){$(13_10)	draw_set_color(c_white)$(13_10)	draw_set_font(font_midevil)$(13_10)	//timer$(13_10)	draw_text(25, 25, "Time Left: " + string(show_time));$(13_10)	//score$(13_10)	draw_text(25, 40, "Gold: " + string(score));$(13_10)}"
//debug tool that draws the grid and highlights objects that player cant go through
//to enable write true and to disable it write false
if(adminTool) {
	draw_set_alpha(.5);
	mp_grid_draw(gridRoomTavern)
	draw_set_alpha(1);
}

if(room == roomTavern){
	draw_set_color(c_white)
	draw_set_font(font_midevil)
	//timer
	draw_text(25, 25, "Time Left: " + string(show_time));
	//score
	draw_text(25, 40, "Gold: " + string(score));
}