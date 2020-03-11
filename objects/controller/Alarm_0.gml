/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 329AE4FE
/// @DnDArgument : "code" "/// @desc Spawning init$(13_10)//CREATES A DS_LIST FROM PARAMETERS IN SPAWNS$(13_10)initDone = true; //prevents the if statement in step from running again$(13_10)packSpawn = spawns[0];$(13_10)room_Time = spawns[1];$(13_10)goldGoal = spawns[5];$(13_10)total = spawns[2] + spawns[3] + spawns[4];$(13_10)//80 -> allows for 30 seconds entrance, 10 second wait seated, 30 seconds seated, 10 extra$(13_10)spawnInterval = (room_Time - 80) div (total div packSpawn); $(13_10)tempList = ds_list_create();$(13_10)//add reds$(13_10)for (var i = 0; i < spawns[2]; i++) { $(13_10)	ds_list_add(tempList, "red");$(13_10)}$(13_10)//add yellows$(13_10)for (var i = 0; i < spawns[3]; i++) { $(13_10)	ds_list_add(tempList, "yellow");$(13_10)}$(13_10)//add blues$(13_10)for (var i = 0; i < spawns[4]; i++) { $(13_10)	ds_list_add(tempList, "blue");$(13_10)}$(13_10)ds_list_shuffle(tempList); //shuffles spawn order$(13_10)$(13_10)//moves shuffled list into a queue$(13_10)spawner = ds_queue_create(); $(13_10)for (var i = 0; i < ds_list_size(tempList); i++) {$(13_10)	ds_queue_enqueue(spawner, ds_list_find_value(tempList, i));$(13_10)}$(13_10)$(13_10)//delete tempList, prevents memory leaks$(13_10)ds_list_destroy(tempList);$(13_10)$(13_10)$(13_10)"
/// @desc Spawning init
//CREATES A DS_LIST FROM PARAMETERS IN SPAWNS
initDone = true; //prevents the if statement in step from running again
packSpawn = spawns[0];
room_Time = spawns[1];
goldGoal = spawns[5];
total = spawns[2] + spawns[3] + spawns[4];
//80 -> allows for 30 seconds entrance, 10 second wait seated, 30 seconds seated, 10 extra
spawnInterval = (room_Time - 80) div (total div packSpawn); 
tempList = ds_list_create();
//add reds
for (var i = 0; i < spawns[2]; i++) { 
	ds_list_add(tempList, "red");
}
//add yellows
for (var i = 0; i < spawns[3]; i++) { 
	ds_list_add(tempList, "yellow");
}
//add blues
for (var i = 0; i < spawns[4]; i++) { 
	ds_list_add(tempList, "blue");
}
ds_list_shuffle(tempList); //shuffles spawn order

//moves shuffled list into a queue
spawner = ds_queue_create(); 
for (var i = 0; i < ds_list_size(tempList); i++) {
	ds_queue_enqueue(spawner, ds_list_find_value(tempList, i));
}

//delete tempList, prevents memory leaks
ds_list_destroy(tempList);