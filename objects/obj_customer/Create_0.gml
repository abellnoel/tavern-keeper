/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AF83E54
/// @DnDArgument : "code" "//initial seatable state$(13_10)seatable = true;$(13_10)$(13_10)//distance to edges of rug from center$(13_10)//padding defines a smaller rectangle within the rug's rectangle$(13_10)rugPadding = 10;$(13_10)vEdge = obj_rug.sprite_height / 2 - rugPadding;$(13_10)wEdge = obj_rug.sprite_width / 2 - rugPadding; $(13_10)//random point on rug$(13_10)rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);$(13_10)rugY = irandom_range(obj_rug.y - vEdge, obj_rug.y + vEdge);$(13_10)x = rugX;$(13_10)y = rugY + spawnOffset;$(13_10)rugY -= feetOffset;$(13_10)rugMove = true;$(13_10)"
//initial seatable state
seatable = true;

//distance to edges of rug from center
//padding defines a smaller rectangle within the rug's rectangle
rugPadding = 10;
vEdge = obj_rug.sprite_height / 2 - rugPadding;
wEdge = obj_rug.sprite_width / 2 - rugPadding; 
//random point on rug
rugX = irandom_range(obj_rug.x - wEdge, obj_rug.x + wEdge);
rugY = irandom_range(obj_rug.y - vEdge, obj_rug.y + vEdge);
x = rugX;
y = rugY + spawnOffset;
rugY -= feetOffset;
rugMove = true;