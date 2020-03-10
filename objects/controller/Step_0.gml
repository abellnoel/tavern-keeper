/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C4B452B
/// @DnDArgument : "code" "//if selected customer is deleted while selected, return selection to noone$(13_10)//prevents errors with having customers who walked away still selected and then trying to seat them$(13_10)if (!instance_exists(customerSelect)) { $(13_10)	customerSelect = noone;$(13_10)}$(13_10)room_Time = room_Time - (1/room_speed)$(13_10)show_time = ceil(room_Time)"
//if selected customer is deleted while selected, return selection to noone
//prevents errors with having customers who walked away still selected and then trying to seat them
if (!instance_exists(customerSelect)) { 
	customerSelect = noone;
}
room_Time = room_Time - (1/room_speed)
show_time = ceil(room_Time)