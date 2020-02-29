/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56DFBE53
/// @DnDArgument : "code" "//when customer collides with table, check occupation and teleport to free chair$(13_10)//not using collision event as it prevents customers from clipping into the table's bounding box$(13_10)tableCustomer = instance_position(x, y, obj_customer); $(13_10)if (tableCustomer != noone) {$(13_10)	for (var i = 0; i < array_length_1d(chairList); i++) { $(13_10)		checkChair = chairList[i]$(13_10)		if (!checkChair.occupied) {$(13_10)			//teleport customer to chair$(13_10)			tableCustomer.x = checkChair.x;$(13_10)			tableCustomer.y = checkChair.y;$(13_10)			tableCustomer.direction = checkChair.chairDirection;$(13_10)			if (checkChair.chairDirection == 270) {$(13_10)				tableCustomer.depth = -45;$(13_10)			}$(13_10)			break;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//update chairs available number realtime$(13_10)chairsAvailable = 4;$(13_10)for (var i = 0; i < array_length_1d(chairList); i++) { $(13_10)	if (chairList[i].occupied) {$(13_10)		chairsAvailable -= 1;$(13_10)	}$(13_10)}"
//when customer collides with table, check occupation and teleport to free chair
//not using collision event as it prevents customers from clipping into the table's bounding box
tableCustomer = instance_position(x, y, obj_customer); 
if (tableCustomer != noone) {
	for (var i = 0; i < array_length_1d(chairList); i++) { 
		checkChair = chairList[i]
		if (!checkChair.occupied) {
			//teleport customer to chair
			tableCustomer.x = checkChair.x;
			tableCustomer.y = checkChair.y;
			tableCustomer.direction = checkChair.chairDirection;
			if (checkChair.chairDirection == 270) {
				tableCustomer.depth = -45;
			}
			break;
		}
	}
}

//update chairs available number realtime
chairsAvailable = 4;
for (var i = 0; i < array_length_1d(chairList); i++) { 
	if (chairList[i].occupied) {
		chairsAvailable -= 1;
	}
}