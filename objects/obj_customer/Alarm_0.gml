/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15270E6F
/// @DnDArgument : "code" "//CUSTOMER WALKS OUT FROM ENTRANCE AFTER PATIENCE IN SECONDS$(13_10)if (seatable) { //walk out event only occurs if customer has NOT been seated$(13_10)	seatable = false; //makes sure customers who walk out cant be seated last minute$(13_10)	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);$(13_10)	direction = 270;$(13_10)	speed = spd;$(13_10)}"
//CUSTOMER WALKS OUT FROM ENTRANCE AFTER PATIENCE IN SECONDS
if (seatable) { //walk out event only occurs if customer has NOT been seated
	seatable = false; //makes sure customers who walk out cant be seated last minute
	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);
	direction = 270;
	speed = spd;
}