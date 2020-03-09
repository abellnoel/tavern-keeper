/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2E95B996
/// @DnDArgument : "code" "/// @description CUSTOMER WALKS OUT FROM SEAT EITHER FAILED OR SUCCESS$(13_10)if (instance_exists(bubble)) {$(13_10)	instance_destroy(bubble); //destroy food/drink bubble$(13_10)	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);$(13_10)	serveFailed = true;$(13_10)}$(13_10)$(13_10)//NEEEWWWWW$(13_10)else {$(13_10)	alarm[3] = room_speed * stay; //starts timer for how long customer stays$(13_10)}$(13_10)//NEEEWWWWW$(13_10)$(13_10)//set walking path$(13_10)switch (direction) {$(13_10)//top or bottom seat same behavior$(13_10)	case 90:$(13_10)	case 270:$(13_10)		hExit = obj_rug.x;$(13_10)		vExit = y;$(13_10)		break;$(13_10)	case 0:$(13_10)	case 180:$(13_10)		hExit = obj_rug.x;$(13_10)		vExit = y - 90;$(13_10)		break;$(13_10)}"
/// @description CUSTOMER WALKS OUT FROM SEAT EITHER FAILED OR SUCCESS
if (instance_exists(bubble)) {
	instance_destroy(bubble); //destroy food/drink bubble
	bubble = instance_create_layer(x, y, "Instances", obj_angryBubble);
	serveFailed = true;
}

//NEEEWWWWW
else {
	alarm[3] = room_speed * stay; //starts timer for how long customer stays
}
//NEEEWWWWW

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