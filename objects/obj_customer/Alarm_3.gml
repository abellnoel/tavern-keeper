/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25CEECC2
/// @DnDArgument : "code" "/// @description CUSTOMER SATISFIED TIMER TO LEAVE $(13_10)bubble = instance_create_layer(x, y, "Instances", obj_happyBubble);$(13_10)servePassed = true;$(13_10)instance_destroy(foodOrDrink); //should exist if customer was served"
/// @description CUSTOMER SATISFIED TIMER TO LEAVE 
bubble = instance_create_layer(x, y, "Instances", obj_happyBubble);
servePassed = true;
instance_destroy(foodOrDrink); //should exist if customer was served