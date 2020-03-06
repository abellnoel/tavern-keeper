/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 356B871E
/// @DnDArgument : "code" "/// @description CUSTOMER WANTS EITHER FOOD OR DRINK AFTER SEATED$(13_10)choice = [obj_foodBubble, obj_drinkBubble]; //can add on later$(13_10)wants = choice[irandom(array_length_1d(choice) - 1)]; $(13_10)bubble = instance_create_layer(x, y, "Instances", wants);"
/// @description CUSTOMER WANTS EITHER FOOD OR DRINK AFTER SEATED
choice = [obj_foodBubble, obj_drinkBubble]; //can add on later
wants = choice[irandom(array_length_1d(choice) - 1)]; 
bubble = instance_create_layer(x, y, "Instances", wants);