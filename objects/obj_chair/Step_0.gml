/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05799134
/// @DnDArgument : "code" "//constantly updates whether there is a customer seated at the chair$(13_10)if (position_meeting(x, y, obj_customer)) {$(13_10)	occupied = true;	$(13_10)}$(13_10)else {$(13_10)	occupied = false;$(13_10)}"
//constantly updates whether there is a customer seated at the chair
if (position_meeting(x, y, obj_customer)) {
	occupied = true;	
}
else {
	occupied = false;
}