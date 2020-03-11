/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C4B452B
/// @DnDArgument : "code" "//if selected customer is deleted while selected, return selection to noone$(13_10)//prevents errors with having customers who walked away still selected and then trying to seat them$(13_10)if (!instance_exists(customerSelect)) { $(13_10)	customerSelect = noone;$(13_10)}$(13_10)room_Time = room_Time - (1/room_speed)$(13_10)show_time = ceil(room_Time)$(13_10)$(13_10)//LEVEL ONE$(13_10)if (room == roomTavern) {$(13_10)	if (!initDone) {$(13_10)		spawns = spawns1;$(13_10)		alarm[0] = 1; //instant$(13_10)	}$(13_10)	//customer spawning$(13_10)	if (!firstSpawned) {$(13_10)		firstSpawned = true;$(13_10)		alarm[1] = 1; //initial spawn$(13_10)	}$(13_10)	//spawner queues spawn if spawn hasn't been queued once spawner has been initialized$(13_10)	if (ds_exists(spawner, ds_type_queue)) {$(13_10)		if (!ds_queue_empty(spawner) and !spawnQueued) {$(13_10)			spawnQueued = true;$(13_10)			alarm[1] = room_speed * spawnInterval;$(13_10)		}$(13_10)	}$(13_10)}"
//if selected customer is deleted while selected, return selection to noone
//prevents errors with having customers who walked away still selected and then trying to seat them
if (!instance_exists(customerSelect)) { 
	customerSelect = noone;
}
room_Time = room_Time - (1/room_speed)
show_time = ceil(room_Time)

//LEVEL ONE
if (room == roomTavern) {
	if (!initDone) {
		spawns = spawns1;
		alarm[0] = 1; //instant
	}
	//customer spawning
	if (!firstSpawned) {
		firstSpawned = true;
		alarm[1] = 1; //initial spawn
	}
	//spawner queues spawn if spawn hasn't been queued once spawner has been initialized
	if (ds_exists(spawner, ds_type_queue)) {
		if (!ds_queue_empty(spawner) and !spawnQueued) {
			spawnQueued = true;
			alarm[1] = room_speed * spawnInterval;
		}
	}
}