/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AF83E54
/// @DnDArgument : "code" "//initial seatable state$(13_10)seatable = true;$(13_10)pointed = false;$(13_10)depth = -50;$(13_10)$(13_10)//distance to edges of rug from center$(13_10)//padding defines a smaller rectangle within the rug's rectangle$(13_10)vEdge = obj_rug.sprite_height / 2;$(13_10)wEdge = obj_rug.sprite_width / 2;$(13_10)//random point on rug$(13_10)rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);$(13_10)rugY = irandom_range(obj_rug.y - vEdge, obj_rug.y + vEdge);$(13_10)rugMove = true;$(13_10)$(13_10)"
//initial seatable state
seatable = true;
pointed = false;
depth = -50;

//distance to edges of rug from center
//padding defines a smaller rectangle within the rug's rectangle
vEdge = obj_rug.sprite_height / 2;
wEdge = obj_rug.sprite_width / 2;
//random point on rug
rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);
rugY = irandom_range(obj_rug.y - vEdge, obj_rug.y + vEdge);
rugMove = true;