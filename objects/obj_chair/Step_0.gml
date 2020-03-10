/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 05799134
/// @DnDArgument : "code" "//constantly updates whether there is a customer seated at the chair$(13_10)who = instance_place(x, y, obj_customer)$(13_10)$(13_10)if (instance_exists(who)) {$(13_10)    occupied = true;$(13_10)    OcColor = who.color;$(13_10)}$(13_10)else {$(13_10)    occupied = false;$(13_10)    OcColor = "n/a";$(13_10)}"
//constantly updates whether there is a customer seated at the chair
who = instance_place(x, y, obj_customer)

if (instance_exists(who)) {
    occupied = true;
    OcColor = who.color;
}
else {
    occupied = false;
    OcColor = "n/a";
}