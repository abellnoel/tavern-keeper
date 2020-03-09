/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 24379A5B
/// @DnDArgument : "code" "//initialize click coordinate variables$(13_10)walk = false;$(13_10)direction = 270; //start in down positon$(13_10)depth = -50; $(13_10)$(13_10)//food/drink states$(13_10)enum SERVING {$(13_10)	none,$(13_10)	food,$(13_10)	drink$(13_10)}$(13_10)serveState = SERVING.none;$(13_10)serveIndicator = noone;$(13_10)$(13_10)//initialize player path$(13_10)playerPath = undefined;"
//initialize click coordinate variables
walk = false;
direction = 270; //start in down positon
depth = -50; 

//food/drink states
enum SERVING {
	none,
	food,
	drink
}
serveState = SERVING.none;
serveIndicator = noone;

//initialize player path
playerPath = undefined;