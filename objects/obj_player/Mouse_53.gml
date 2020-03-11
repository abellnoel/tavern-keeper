/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 68D182B0
/// @DnDArgument : "code" "/// @desc DELIVERING FOOD$(13_10)//select$(13_10)if (serveState = SERVING.drink) {$(13_10)	bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_drinkBubble);$(13_10)}$(13_10)else if (serveState = SERVING.food) {$(13_10)	bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_foodBubble);$(13_10)}$(13_10)else {$(13_10)	//item meatPlate or ale $(13_10)	bubbleAtMouse = noone;$(13_10)}$(13_10)//destroy bubble, bubble is only selected in the first place if serving state matches bubble$(13_10)if (distance_to_object(bubbleAtMouse) < serveDistance and instance_exists(bubbleAtMouse)) {$(13_10)	customerSelected = instance_nearest(mouse_x, mouse_y, obj_customer);$(13_10)	customerTable = instance_nearest(customerSelected.x, customerSelected.y, obj_table); $(13_10)	instance_destroy(bubbleAtMouse);$(13_10)	score += 10 + (10 * customerTable.scaling);$(13_10)}$(13_10)//switch serveState$(13_10)itemAtMouse = instance_position(mouse_x, mouse_y, obj_meatPlate); //obj_ale is a child of obj_meatPlate so its instances are also selected here$(13_10)if (distance_to_object(itemAtMouse) < serveDistance and instance_exists(itemAtMouse)) {$(13_10)	//only switches if item selected are one of the two at the top of the room$(13_10)	if (itemAtMouse == controller.foodSource) {$(13_10)		instance_destroy(serveIndicator); //destroy old serveIndicator$(13_10)		serveState = SERVING.food;$(13_10)		serveIndicator = instance_create_layer(x, y, "Instances", obj_foodBubblePLAYER);$(13_10)	}$(13_10)	if (itemAtMouse == controller.drinkSource) { $(13_10)		instance_destroy(serveIndicator);$(13_10)		serveState = SERVING.drink;$(13_10)		serveIndicator = instance_create_layer(x, y, "Instances", obj_drinkBubblePLAYER);$(13_10)	}$(13_10)}$(13_10)"
/// @desc DELIVERING FOOD
//select
if (serveState = SERVING.drink) {
	bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_drinkBubble);
}
else if (serveState = SERVING.food) {
	bubbleAtMouse = instance_position(mouse_x, mouse_y, obj_foodBubble);
}
else {
	//item meatPlate or ale 
	bubbleAtMouse = noone;
}
//destroy bubble, bubble is only selected in the first place if serving state matches bubble
if (distance_to_object(bubbleAtMouse) < serveDistance and instance_exists(bubbleAtMouse)) {
	customerSelected = instance_nearest(mouse_x, mouse_y, obj_customer);
	customerTable = instance_nearest(customerSelected.x, customerSelected.y, obj_table); 
	instance_destroy(bubbleAtMouse);
	score += 10 + (10 * customerTable.scaling);
}
//switch serveState
itemAtMouse = instance_position(mouse_x, mouse_y, obj_meatPlate); //obj_ale is a child of obj_meatPlate so its instances are also selected here
if (distance_to_object(itemAtMouse) < serveDistance and instance_exists(itemAtMouse)) {
	//only switches if item selected are one of the two at the top of the room
	if (itemAtMouse == controller.foodSource) {
		instance_destroy(serveIndicator); //destroy old serveIndicator
		serveState = SERVING.food;
		serveIndicator = instance_create_layer(x, y, "Instances", obj_foodBubblePLAYER);
	}
	if (itemAtMouse == controller.drinkSource) { 
		instance_destroy(serveIndicator);
		serveState = SERVING.drink;
		serveIndicator = instance_create_layer(x, y, "Instances", obj_drinkBubblePLAYER);
	}
}