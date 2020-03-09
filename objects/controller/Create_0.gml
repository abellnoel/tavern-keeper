/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072E7778
/// @DnDArgument : "code" "//randomizes seed at beginning of game to prevent same numbers genereated from irandom$(13_10)randomize();$(13_10)customerSelect = noone;$(13_10)//instialized grid$(13_10)globalvar gridRoomTavern;$(13_10)//creates gride basing of x8 pixel grid of entire room$(13_10)gridRoomTavern = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);$(13_10)//add instances to the grid where player doesn't go through the object$(13_10)mp_grid_add_instances(gridRoomTavern, obj_table, false);$(13_10)mp_grid_add_instances(gridRoomTavern, obj_tableWebbed, false);"
//randomizes seed at beginning of game to prevent same numbers genereated from irandom
randomize();
customerSelect = noone;
//instialized grid
globalvar gridRoomTavern;
//creates gride basing of x8 pixel grid of entire room
gridRoomTavern = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);
//add instances to the grid where player doesn't go through the object
mp_grid_add_instances(gridRoomTavern, obj_table, false);
mp_grid_add_instances(gridRoomTavern, obj_tableWebbed, false);