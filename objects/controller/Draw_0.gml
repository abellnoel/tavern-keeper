/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B8F047B
/// @DnDArgument : "code" "//debug tool that draws the grid and highlights objects that player cant go through$(13_10)//to enable write true and to disable it write false$(13_10)if(adminTool) {$(13_10)	draw_set_alpha(.5);$(13_10)	mp_grid_draw(gridRoomTavern)$(13_10)	draw_set_alpha(1);$(13_10)}$(13_10)$(13_10)if(room != roomHomeScreen and room != roomCreditsScreen){$(13_10)	draw_set_color(c_white)$(13_10)	draw_set_font(font_midevil)$(13_10)	//timer$(13_10)	draw_text(25, 25, "Time Left: " + string(show_time));$(13_10)	//score$(13_10)	draw_text(225, 25, "Gold: " + string(score));$(13_10)	//goal $(13_10)	draw_text(425, 25, "Goal: " + string(goldGoal));$(13_10)}$(13_10)$(13_10)//win/loss screen$(13_10)if (drawPass) {$(13_10)	//draw_set_halign(fa_center);$(13_10)	draw_text(room_width / 2 - 300, room_height / 2, "LEVEL CLEARED!");$(13_10)	//draw_text(room_width / 2, room_height / 2 + 50, "You have earned enough gold to stay in business another night, excellent work!");$(13_10)	draw_text(room_width / 2 - 300, room_height / 2 + 100, "(Press SPACE to move onto the next day!)");	$(13_10)}$(13_10)$(13_10)if (drawFail) {$(13_10)	//draw_set_halign(fa_center);$(13_10)	draw_text(room_width / 2 - 300, room_height / 2, "LEVEL FAILED! :(");$(13_10)	//draw_text(room_width / 2, room_height / 2 + 50, "Unfortunately you did not earn enough gold to stay in business another night and the mayor shut dwon the tavern...");$(13_10)	draw_text(room_width / 2 - 300, room_height / 2 + 100, "(Press SPACE to try this day again!)");	$(13_10)}"
//debug tool that draws the grid and highlights objects that player cant go through
//to enable write true and to disable it write false
if(adminTool) {
	draw_set_alpha(.5);
	mp_grid_draw(gridRoomTavern)
	draw_set_alpha(1);
}

if(room != roomHomeScreen and room != roomCreditsScreen){
	draw_set_color(c_white)
	draw_set_font(font_midevil)
	//timer
	draw_text(25, 25, "Time Left: " + string(show_time));
	//score
	draw_text(225, 25, "Gold: " + string(score));
	//goal 
	draw_text(425, 25, "Goal: " + string(goldGoal));
}

//win/loss screen
if (drawPass) {
	//draw_set_halign(fa_center);
	draw_text(room_width / 2 - 300, room_height / 2, "LEVEL CLEARED!");
	//draw_text(room_width / 2, room_height / 2 + 50, "You have earned enough gold to stay in business another night, excellent work!");
	draw_text(room_width / 2 - 300, room_height / 2 + 100, "(Press SPACE to move onto the next day!)");	
}

if (drawFail) {
	//draw_set_halign(fa_center);
	draw_text(room_width / 2 - 300, room_height / 2, "LEVEL FAILED! :(");
	//draw_text(room_width / 2, room_height / 2 + 50, "Unfortunately you did not earn enough gold to stay in business another night and the mayor shut dwon the tavern...");
	draw_text(room_width / 2 - 300, room_height / 2 + 100, "(Press SPACE to try this day again!)");	
}