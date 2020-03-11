/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072E7778
/// @DnDArgument : "code" "//Set Room Time$(13_10)room_Time = startTime;$(13_10)$(13_10)//randomizes seed at beginning of game to prevent same numbers genereated from irandom$(13_10)randomize();$(13_10)customerSelect = noone;$(13_10)//instialized grid$(13_10)globalvar gridRoomTavern;$(13_10)//creates gride basing of x8 pixel grid of entire room$(13_10)gridRoomTavern = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);$(13_10)//add instances to the grid where player doesn't go through the object$(13_10)mp_grid_add_instances(gridRoomTavern, obj_solidNoWalkSpace, false);$(13_10)$(13_10)//intializes adminTool debugging variable$(13_10)adminTool = false;$(13_10)$(13_10)//customer spawning variables$(13_10)//[packSize, red #, yellow #, blue #] $(13_10)initDone = false;$(13_10)spawns = spawns1; //defaults to spawns1 if spawns is never set$(13_10)spawns1 = [3, 5, 5, 5]; //first level"
//Set Room Time
room_Time = startTime;

//randomizes seed at beginning of game to prevent same numbers genereated from irandom
randomize();
customerSelect = noone;
//instialized grid
globalvar gridRoomTavern;
//creates gride basing of x8 pixel grid of entire room
gridRoomTavern = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);
//add instances to the grid where player doesn't go through the object
mp_grid_add_instances(gridRoomTavern, obj_solidNoWalkSpace, false);

//intializes adminTool debugging variable
adminTool = false;

//customer spawning variables
//[packSize, red #, yellow #, blue #] 
initDone = false;
spawns = spawns1; //defaults to spawns1 if spawns is never set
spawns1 = [3, 5, 5, 5]; //first level