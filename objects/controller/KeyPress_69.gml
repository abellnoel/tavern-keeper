/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BCE083E
/// @DnDArgument : "code" "//temporary spawn customers key$(13_10)//temporary random color for customers$(13_10)if (room = roomTavern) {$(13_10)	customerColor = [spr_customerStanding, spr_customerStandingR, spr_customerStandingG, spr_customerStandingB, spr_customerStandingP, spr_customerStandingO];$(13_10)	colorIndex = irandom(array_length_1d(customerColor) - 1);$(13_10)	spawned = instance_create_layer(320, 760, "Instances", obj_customer);$(13_10)	spawned.sprite_index = customerColor[colorIndex];$(13_10)}"
//temporary spawn customers key
//temporary random color for customers
if (room = roomTavern) {
	customerColor = [spr_customerStanding, spr_customerStandingR, spr_customerStandingG, spr_customerStandingB, spr_customerStandingP, spr_customerStandingO];
	colorIndex = irandom(array_length_1d(customerColor) - 1);
	spawned = instance_create_layer(320, 760, "Instances", obj_customer);
	spawned.sprite_index = customerColor[colorIndex];
}