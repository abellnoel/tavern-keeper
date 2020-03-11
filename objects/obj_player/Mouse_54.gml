/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 33F8F4B1
/// @DnDArgument : "code" "/// @desc MOVEMENT$(13_10)//store location of mouse click$(13_10)xClick = mouse_x; $(13_10)yClick = mouse_y; $(13_10)$(13_10)//If pointer exists then destroy$(13_10)if(instance_exists(obj_pointer)) {$(13_10)	instance_destroy(obj_pointer);$(13_10)}$(13_10)$(13_10)//create new instance pointer$(13_10)instance_create_layer(xClick, yClick, "Instances", obj_pointer);$(13_10)$(13_10)//if instance pointer exists then run the code$(13_10)if(instance_exists(obj_pointer)){$(13_10)	$(13_10)	playerPath = path_add();$(13_10)	//checks if there is path created on the grid of the room$(13_10)	if (mp_grid_path(gridRoomTavern, playerPath, x, y, obj_pointer.x, obj_pointer.y, false)) {$(13_10)		//starts player path$(13_10)		path_start(playerPath, spd, path_action_stop, false);$(13_10)		//enable walk animation$(13_10)		walk = true;$(13_10)	} else {$(13_10)		//Checks if the pointer obj is inside the placeholder object for the zone$(13_10)		//that the player can't walk in for pathfinding.$(13_10)		if(instance_place(xClick, yClick, obj_solidNoWalkSpace)) {$(13_10)			//pointer object inside object solidNoWalkSpace then store object into inst(instance)$(13_10)			inst = instance_place(xClick, yClick, obj_solidNoWalkSpace);$(13_10)		} $(13_10)		$(13_10)		//checks if it's not equal to noone$(13_10)		if (inst != noone) {$(13_10)			// This algorithm moves the pointer outside the object$(13_10)			// based on where the player is.$(13_10)			if (obj_player.x < inst.x) {$(13_10)				if (obj_player.y < inst.y) {$(13_10)					obj_pointer.y = inst.y - 4;$(13_10)				} else {$(13_10)					obj_pointer.x = inst.x - 12;$(13_10)				}$(13_10)			} else {$(13_10)				if (obj_player.y < inst.y) {$(13_10)					obj_pointer.x = inst.x + inst.sprite_width + 12;$(13_10)				} else {$(13_10)					obj_pointer.y = inst.y + inst.sprite_height + 4;$(13_10)				}$(13_10)			}$(13_10)		$(13_10)			//checks the path again with new coords that was set outside the object$(13_10)			if(mp_grid_path(gridRoomTavern, playerPath, x, y, obj_pointer.x, obj_pointer.y, false)) {$(13_10)				path_start(playerPath, spd, path_action_stop, false);$(13_10)				walk = true;$(13_10)			}$(13_10)		}$(13_10)		$(13_10)	}$(13_10)}$(13_10)"
/// @desc MOVEMENT
//store location of mouse click
xClick = mouse_x; 
yClick = mouse_y; 

//If pointer exists then destroy
if(instance_exists(obj_pointer)) {
	instance_destroy(obj_pointer);
}

//create new instance pointer
instance_create_layer(xClick, yClick, "Instances", obj_pointer);

//if instance pointer exists then run the code
if(instance_exists(obj_pointer)){
	
	playerPath = path_add();
	//checks if there is path created on the grid of the room
	if (mp_grid_path(gridRoomTavern, playerPath, x, y, obj_pointer.x, obj_pointer.y, false)) {
		//starts player path
		path_start(playerPath, spd, path_action_stop, false);
		//enable walk animation
		walk = true;
	} else {
		//Checks if the pointer obj is inside the placeholder object for the zone
		//that the player can't walk in for pathfinding.
		if(instance_place(xClick, yClick, obj_solidNoWalkSpace)) {
			//pointer object inside object solidNoWalkSpace then store object into inst(instance)
			inst = instance_place(xClick, yClick, obj_solidNoWalkSpace);
		} 
		
		//checks if it's not equal to noone
		if (inst != noone) {
			// This algorithm moves the pointer outside the object
			// based on where the player is.
			if (obj_player.x < inst.x) {
				if (obj_player.y < inst.y) {
					obj_pointer.y = inst.y - 4;
				} else {
					obj_pointer.x = inst.x - 12;
				}
			} else {
				if (obj_player.y < inst.y) {
					obj_pointer.x = inst.x + inst.sprite_width + 12;
				} else {
					obj_pointer.y = inst.y + inst.sprite_height + 4;
				}
			}
		
			//checks the path again with new coords that was set outside the object
			if(mp_grid_path(gridRoomTavern, playerPath, x, y, obj_pointer.x, obj_pointer.y, false)) {
				path_start(playerPath, spd, path_action_stop, false);
				walk = true;
			}
		}
		
	}
}