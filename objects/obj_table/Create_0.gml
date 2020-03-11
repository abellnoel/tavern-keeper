/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A3CFE53
/// @DnDArgument : "code" "//check for chairs around table and assign them to table$(13_10)//instance position returns instance id of chair at position $(13_10)chairList = [];$(13_10)//left$(13_10)chairList[0] = chair1; $(13_10)//top$(13_10)chairList[1] = chair2;$(13_10)//right$(13_10)chairList[2] = chair3;$(13_10)//bottom$(13_10)chairList[3] = chair4$(13_10)$(13_10)//initial number of chairs available$(13_10)chairsAvailable = chairs; $(13_10)$(13_10)//layer depth$(13_10)depth = -45;$(13_10)$(13_10)//color table money scaling$(13_10)Rcount = 0;$(13_10)Bcount = 0;$(13_10)Ycount = 0;$(13_10)scaleArray = [0, 0, .25,.5,.75];$(13_10)scaling = 1;$(13_10)"
//check for chairs around table and assign them to table
//instance position returns instance id of chair at position 
chairList = [];
//left
chairList[0] = chair1; 
//top
chairList[1] = chair2;
//right
chairList[2] = chair3;
//bottom
chairList[3] = chair4

//initial number of chairs available
chairsAvailable = chairs; 

//layer depth
depth = -45;

//color table money scaling
Rcount = 0;
Bcount = 0;
Ycount = 0;
scaleArray = [0, 0, .25,.5,.75];
scaling = 1;