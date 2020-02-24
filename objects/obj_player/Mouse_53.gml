/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 663E43F8
/// @DnDArgument : "code" "//select$(13_10)customerAtMouse = instance_position(mouse_x, mouse_y, obj_customer);$(13_10)//enter this if statement if no customer selected$(13_10)if (customerSelect == noone) { $(13_10)	//checks if customer at mouse FIRST, if not skips check for if that customer is seatable$(13_10)	if (customerAtMouse != noone and customerAtMouse.seatable == true) { $(13_10)		customerSelect = customerAtMouse;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	//deselect (only works on same customer)$(13_10)	if (customerAtMouse == customerSelect) {$(13_10)		customerSelect = noone;$(13_10)	}$(13_10)	$(13_10)	//select table (some customer should be selected)$(13_10)	tableAtMouse = instance_position(mouse_x, mouse_y, obj_table);$(13_10)	if (tableAtMouse != noone) { $(13_10)		//teleport customer to table (TEMPORARY)$(13_10)		customerSelect.x = tableAtMouse.x;$(13_10)		customerSelect.y = tableAtMouse.y;$(13_10)		customerSelect.seatable = false; //no longer seatable$(13_10)		customerSelect = noone; //deselects customer so other customers can be selected$(13_10)	}$(13_10)}"
//select
customerAtMouse = instance_position(mouse_x, mouse_y, obj_customer);
//enter this if statement if no customer selected
if (customerSelect == noone) { 
	//checks if customer at mouse FIRST, if not skips check for if that customer is seatable
	if (customerAtMouse != noone and customerAtMouse.seatable == true) { 
		customerSelect = customerAtMouse;
	}
}
else {
	//deselect (only works on same customer)
	if (customerAtMouse == customerSelect) {
		customerSelect = noone;
	}
	
	//select table (some customer should be selected)
	tableAtMouse = instance_position(mouse_x, mouse_y, obj_table);
	if (tableAtMouse != noone) { 
		//teleport customer to table (TEMPORARY)
		customerSelect.x = tableAtMouse.x;
		customerSelect.y = tableAtMouse.y;
		customerSelect.seatable = false; //no longer seatable
		customerSelect = noone; //deselects customer so other customers can be selected
	}
}