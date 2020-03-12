/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072E7778
/// @DnDArgument : "code" "//above all$(13_10)depth = -500;$(13_10)$(13_10)//Set Room Time$(13_10)room_Time = startTime;$(13_10)$(13_10)//randomizes seed at beginning of game to prevent same numbers genereated from irandom$(13_10)randomize();$(13_10)customerSelect = noone;$(13_10)//instialized grid$(13_10)globalvar gridRoomTavern;$(13_10)//creates gride basing of x8 pixel grid of entire room$(13_10)gridRoomTavern = mp_grid_create(0, 0, room_width div 8, room_height div 8, 8, 8);$(13_10)//add instances to the grid where player doesn't go through the object$(13_10)mp_grid_add_instances(gridRoomTavern, obj_solidNoWalkSpace, false);$(13_10)$(13_10)//intializes adminTool debugging variable$(13_10)adminTool = false;$(13_10)$(13_10)//initial setting of source for food/drink$(13_10)foodSource = instance_nearest(foodSourceX, foodSourceY, obj_meatPlate);$(13_10)drinkSource = instance_nearest(drinkSourceX, drinkSourceY, obj_ale);$(13_10)$(13_10)//customer spawning variables$(13_10)initDone = false;$(13_10)packSpawn = 1; //default packspawn is 1$(13_10)spawner = noone; $(13_10)spawnInterval = 1; $(13_10)spawnQueued = false;$(13_10)firstSpawned = false;$(13_10)theEnd = false;$(13_10)goldGoal = 100; $(13_10)drawPass = false;$(13_10)drawFail = false;$(13_10)score = 0; //score resets whenever room restarts$(13_10)$(13_10)//spawns lists$(13_10)//[packSize, time limit, red #, yellow #, blue #, gold goal] $(13_10)TESTSPAWN = [1, 90, 1, 1, 1, 10];$(13_10)spawns1 = [2, 180, 5, 7, 5, 100]; //first level$(13_10)spawns2 = [3, 200, 10, 8, 10, 300];//second level$(13_10)spawns3 = [4, 220, 15, 15, 15, 500];//third level$(13_10)spawns = spawns1; //defaults to spawns1 if spawns is never set$(13_10)"
//above all
depth = -500;

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

//initial setting of source for food/drink
foodSource = instance_nearest(foodSourceX, foodSourceY, obj_meatPlate);
drinkSource = instance_nearest(drinkSourceX, drinkSourceY, obj_ale);

//customer spawning variables
initDone = false;
packSpawn = 1; //default packspawn is 1
spawner = noone; 
spawnInterval = 1; 
spawnQueued = false;
firstSpawned = false;
theEnd = false;
goldGoal = 100; 
drawPass = false;
drawFail = false;
score = 0; //score resets whenever room restarts

//spawns lists
//[packSize, time limit, red #, yellow #, blue #, gold goal] 
TESTSPAWN = [1, 90, 1, 1, 1, 10];
spawns1 = [2, 180, 5, 7, 5, 100]; //first level
spawns2 = [3, 200, 10, 8, 10, 300];//second level
spawns3 = [4, 220, 15, 15, 15, 500];//third level
spawns = spawns1; //defaults to spawns1 if spawns is never set