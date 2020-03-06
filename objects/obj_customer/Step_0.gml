/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3F523FCE
/// @DnDArgument : "code" "//RUG ENTRANCE$(13_10)//only runs until rugMove is false, then never again$(13_10)//move towards point until close enough by moveOffset$(13_10)//the and seatable clause prevents customers moving at the time of seating from moving when they are seated, !seatable customers moved to last else if$(13_10)if (rugMove and distance_to_point(rugX, rugY) > moveOffset and seatable) { $(13_10)	move_towards_point(rugX, rugY, spd); $(13_10)}$(13_10)//if other customer is at target coordinate WHEN REACHED, re-randomize coordinates$(13_10)else if (rugMove and place_meeting(x, y, obj_customer) and seatable){$(13_10)	rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);$(13_10)	rugY = irandom_range(obj_rug.y - vEdge - spawnOffset, obj_rug.y + vEdge);$(13_10)}$(13_10)//when reaching target with no customer at location, stop movement$(13_10)//setting rugMove to false so this and other rugMove code segments are not used again$(13_10)else if (rugMove) {$(13_10)	speed = 0;$(13_10)	rugMove = false;$(13_10)	alarm[0] = room_speed * patience; //start timer for waiting on floor once customer is situated$(13_10)}$(13_10)$(13_10)//WALKING DIRECTION CHANGE$(13_10)//change sprite based on movement { //not moving, still sprites$(13_10)//all cases are first direction inclusive$(13_10)if (direction >= 315 || direction < 45) { //RIGHT$(13_10)	image_index = 2; $(13_10)}$(13_10)else if (direction >= 45 && direction < 135) { //UP$(13_10)	image_index = 1; $(13_10)}$(13_10)else if (direction >= 135 && direction < 225) { //LEFT$(13_10)	image_index = 3; $(13_10)}$(13_10)else { //DOWN$(13_10)	image_index = 0;$(13_10)}$(13_10)//idle turn arounds if speed is 0 and not seated chance per update$(13_10)//also chance it will randomly select the same direction$(13_10)if (speed = 0 and irandom_range(1, 200) == 1 and seatable) {$(13_10)	direction = irandom_range(0, 360);$(13_10)}$(13_10)$(13_10)//CUSTOMER SELECTION POINTER MECHANICS$(13_10)//if selected by player and no cursor exists, create one$(13_10)if ((controller.customerSelect = id) and !instance_exists(obj_customerPointer)) { $(13_10)	instance_create_layer(x, y - pointerOffset, "Instances", obj_customerPointer);$(13_10)	pointed = true; //instance flagged as pointed to $(13_10)}$(13_10)//if instance is pointed to, track customer and delete pointer when unselected$(13_10)if (pointed) { $(13_10)	obj_customerPointer.x = x;$(13_10)	obj_customerPointer.y = y - pointerOffset;$(13_10)	if (controller.customerSelect != id) { $(13_10)		instance_destroy(obj_customerPointer);$(13_10)		pointed = false;$(13_10)	}	$(13_10)}$(13_10)$(13_10)//bubble follow$(13_10)if (bubble != noone) {$(13_10)	bubble.x = x + 20;$(13_10)	bubble.y = y - 40;$(13_10)}$(13_10)//off screen deletion$(13_10)if (y > room_height + deleteOffset and !rugMove) { //!rugmove, only if customer has already walked in$(13_10)	instance_destroy(bubble);$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)//FOOD AND DRINK EVENTS$(13_10)//patience -> how long customer will wait to be seated before leaving$(13_10)//wait -> time between sitting and wanting food/drink$(13_10)//alarms are measured in steps, alarm[0] = room_speed is 1 second$(13_10)if (!seatable and !waitBegan) { //waitBegan initial is false$(13_10)	waitBegan = true;$(13_10)	alarm[1] = room_speed * wait;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//RUG ENTRANCE
//only runs until rugMove is false, then never again
//move towards point until close enough by moveOffset
//the and seatable clause prevents customers moving at the time of seating from moving when they are seated, !seatable customers moved to last else if
if (rugMove and distance_to_point(rugX, rugY) > moveOffset and seatable) { 
	move_towards_point(rugX, rugY, spd); 
}
//if other customer is at target coordinate WHEN REACHED, re-randomize coordinates
else if (rugMove and place_meeting(x, y, obj_customer) and seatable){
	rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);
	rugY = irandom_range(obj_rug.y - vEdge - spawnOffset, obj_rug.y + vEdge);
}
//when reaching target with no customer at location, stop movement
//setting rugMove to false so this and other rugMove code segments are not used again
else if (rugMove) {
	speed = 0;
	rugMove = false;
	alarm[0] = room_speed * patience; //start timer for waiting on floor once customer is situated
}

//WALKING DIRECTION CHANGE
//change sprite based on movement { //not moving, still sprites
//all cases are first direction inclusive
if (direction >= 315 || direction < 45) { //RIGHT
	image_index = 2; 
}
else if (direction >= 45 && direction < 135) { //UP
	image_index = 1; 
}
else if (direction >= 135 && direction < 225) { //LEFT
	image_index = 3; 
}
else { //DOWN
	image_index = 0;
}
//idle turn arounds if speed is 0 and not seated chance per update
//also chance it will randomly select the same direction
if (speed = 0 and irandom_range(1, 200) == 1 and seatable) {
	direction = irandom_range(0, 360);
}

//CUSTOMER SELECTION POINTER MECHANICS
//if selected by player and no cursor exists, create one
if ((controller.customerSelect = id) and !instance_exists(obj_customerPointer)) { 
	instance_create_layer(x, y - pointerOffset, "Instances", obj_customerPointer);
	pointed = true; //instance flagged as pointed to 
}
//if instance is pointed to, track customer and delete pointer when unselected
if (pointed) { 
	obj_customerPointer.x = x;
	obj_customerPointer.y = y - pointerOffset;
	if (controller.customerSelect != id) { 
		instance_destroy(obj_customerPointer);
		pointed = false;
	}	
}

//bubble follow
if (bubble != noone) {
	bubble.x = x + 20;
	bubble.y = y - 40;
}
//off screen deletion
if (y > room_height + deleteOffset and !rugMove) { //!rugmove, only if customer has already walked in
	instance_destroy(bubble);
	instance_destroy();
}

//FOOD AND DRINK EVENTS
//patience -> how long customer will wait to be seated before leaving
//wait -> time between sitting and wanting food/drink
//alarms are measured in steps, alarm[0] = room_speed is 1 second
if (!seatable and !waitBegan) { //waitBegan initial is false
	waitBegan = true;
	alarm[1] = room_speed * wait;
}