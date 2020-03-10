/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E95B996
/// @DnDArgument : "code" "/// @description CUSTOMER WALKS OUT FROM SEAT EITHER FAILED OR SUCCESS$(13_10)if (instance_exists(bubble)) {$(13_10)	instance_destroy(bubble); //destroy food/drink bubble$(13_10)	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);$(13_10)	serveFailed = true;$(13_10)}$(13_10)else { //customer bubble has been destroyed meaning customer was served$(13_10)	alarm[3] = room_speed * stay; //starts timer for how long customer stays$(13_10)	//spawn food/drink on table to help indicate customer has been served$(13_10)	foodDrinkSpawnX = x;$(13_10)	foodDrinkSpawnY = y; $(13_10)	switch (direction) {$(13_10)		case 0: //left seat$(13_10)			foodDrinkSpawnX += foodDrinkSpawnOffset;$(13_10)			break;$(13_10)		case 90: //bottom seat$(13_10)			foodDrinkSpawnY -= foodDrinkSpawnOffset;$(13_10)			break;$(13_10)		case 180: //right seat$(13_10)			foodDrinkSpawnX -= foodDrinkSpawnOffset;$(13_10)			break;$(13_10)		case 270: //top seat$(13_10)			foodDrinkSpawnY += foodDrinkSpawnOffset - 10;$(13_10)			break;$(13_10)	}$(13_10)	if (wants == obj_foodBubble) {$(13_10)		foodOrDrink = instance_create_layer(foodDrinkSpawnX, foodDrinkSpawnY, "Instances", obj_meatPlate);$(13_10)	}$(13_10)	else {$(13_10)		foodOrDrink = instance_create_layer(foodDrinkSpawnX, foodDrinkSpawnY, "Instances", obj_ale)$(13_10)	}$(13_10)	foodOrDrink.image_xscale = .5;$(13_10)	foodOrDrink.image_yscale = .5;$(13_10)}$(13_10)$(13_10)//set walking path$(13_10)switch (direction) {$(13_10)//top or bottom seat same behavior$(13_10)	case 90:$(13_10)	case 270:$(13_10)		hExit = obj_rug.x;$(13_10)		vExit = y;$(13_10)		break;$(13_10)	case 0:$(13_10)	case 180:$(13_10)		hExit = obj_rug.x;$(13_10)		vExit = y - 90;$(13_10)		break;$(13_10)}"
/// @description CUSTOMER WALKS OUT FROM SEAT EITHER FAILED OR SUCCESS
if (instance_exists(bubble)) {
	instance_destroy(bubble); //destroy food/drink bubble
	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);
	serveFailed = true;
}
else { //customer bubble has been destroyed meaning customer was served
	alarm[3] = room_speed * stay; //starts timer for how long customer stays
	//spawn food/drink on table to help indicate customer has been served
	foodDrinkSpawnX = x;
	foodDrinkSpawnY = y; 
	switch (direction) {
		case 0: //left seat
			foodDrinkSpawnX += foodDrinkSpawnOffset;
			break;
		case 90: //bottom seat
			foodDrinkSpawnY -= foodDrinkSpawnOffset;
			break;
		case 180: //right seat
			foodDrinkSpawnX -= foodDrinkSpawnOffset;
			break;
		case 270: //top seat
			foodDrinkSpawnY += foodDrinkSpawnOffset - 10;
			break;
	}
	if (wants == obj_foodBubble) {
		foodOrDrink = instance_create_layer(foodDrinkSpawnX, foodDrinkSpawnY, "Instances", obj_meatPlate);
	}
	else {
		foodOrDrink = instance_create_layer(foodDrinkSpawnX, foodDrinkSpawnY, "Instances", obj_ale)
	}
	foodOrDrink.image_xscale = .5;
	foodOrDrink.image_yscale = .5;
}

//set walking path
switch (direction) {
//top or bottom seat same behavior
	case 90:
	case 270:
		hExit = obj_rug.x;
		vExit = y;
		break;
	case 0:
	case 180:
		hExit = obj_rug.x;
		vExit = y - 90;
		break;
}