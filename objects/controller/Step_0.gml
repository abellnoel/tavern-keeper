/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C4B452B
/// @DnDArgument : "code" "//if selected customer is deleted while selected, return selection to noone$(13_10)//prevents errors with having customers who walked away still selected and then trying to seat them$(13_10)if (!instance_exists(customerSelect)) { $(13_10)	customerSelect = noone;$(13_10)}$(13_10)room_Time = room_Time - (1/room_speed)$(13_10)show_time = ceil(room_Time)$(13_10)$(13_10)//LEVEL ONE$(13_10)if (room == roomTavern) {$(13_10)	//initializes with paremeters of spawns1$(13_10)	if (!initDone) {$(13_10)		spawns = TESTSPAWN;$(13_10)		alarm[0] = 1; //instant$(13_10)	}$(13_10)	//customer spawning$(13_10)	if (!firstSpawned) {$(13_10)		firstSpawned = true;$(13_10)		alarm[1] = 1; //initial spawn$(13_10)	}$(13_10)	//spawner queues spawn if spawn hasn't been queued once spawner has been initialized$(13_10)	if (ds_exists(spawner, ds_type_queue)) {$(13_10)		if (!ds_queue_empty(spawner) and !spawnQueued) {$(13_10)			spawnQueued = true;$(13_10)			alarm[1] = room_speed * spawnInterval;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//END CONDITION -> Time reaches zero OR spawning is complete and no customers are on screen$(13_10)if (room_Time <= 0 or (ds_exists(spawner, ds_type_queue) and ds_queue_empty(spawner) and (instance_number(obj_customer) == 0)) and initDone) {$(13_10)	//WIN$(13_10)	if (score >= goldGoal) { $(13_10)		drawPass = true;$(13_10)		if (keyboard_check(vk_space)) {$(13_10)			room_goto_next(); //next level$(13_10)		}$(13_10)	}$(13_10)	//FAIL$(13_10)	else {$(13_10)		drawFail = true;$(13_10)		if (keyboard_check(vk_space)) {$(13_10)			room_restart(); //play same level again$(13_10)		}$(13_10)	}$(13_10)}$(13_10)"
//if selected customer is deleted while selected, return selection to noone
//prevents errors with having customers who walked away still selected and then trying to seat them
if (!instance_exists(customerSelect)) { 
	customerSelect = noone;
}
room_Time = room_Time - (1/room_speed)
show_time = ceil(room_Time)

//LEVEL ONE
if (room == roomTavern) {
	//initializes with paremeters of spawns1
	if (!initDone) {
		spawns = TESTSPAWN;
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

//END CONDITION -> Time reaches zero OR spawning is complete and no customers are on screen
if (room_Time <= 0 or (ds_exists(spawner, ds_type_queue) and ds_queue_empty(spawner) and (instance_number(obj_customer) == 0)) and initDone) {
	//WIN
	if (score >= goldGoal) { 
		drawPass = true;
		if (keyboard_check(vk_space)) {
			room_goto_next(); //next level
		}
	}
	//FAIL
	else {
		drawFail = true;
		if (keyboard_check(vk_space)) {
			room_restart(); //play same level again
		}
	}
}