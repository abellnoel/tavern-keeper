/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BCE083E
/// @DnDArgument : "code" "//temporary spawn customers key$(13_10)//temporary random color for customers$(13_10)if (room = roomTavern) {$(13_10)	//array of customer colors$(13_10)	customerColor = ["red", "yellow", "blue"];$(13_10)	colorIndex = irandom(array_length_1d(customerColor) - 1); //TEMPORARY RANDOM COLOR PICKER$(13_10)	spawned = instance_create_layer(320, 760, "Instances", obj_customer);$(13_10)	spawned.color = customerColor[colorIndex];$(13_10)}"
//temporary spawn customers key
//temporary random color for customers
if (room = roomTavern) {
	//array of customer colors
	customerColor = ["red", "yellow", "blue"];
	colorIndex = irandom(array_length_1d(customerColor) - 1); //TEMPORARY RANDOM COLOR PICKER
	spawned = instance_create_layer(320, 760, "Instances", obj_customer);
	spawned.color = customerColor[colorIndex];
}