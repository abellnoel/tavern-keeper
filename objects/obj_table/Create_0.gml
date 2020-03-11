/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A3CFE53
/// @DnDArgument : "code" "//gets center point of bounding box$(13_10)xx = bbox_right - ((bbox_right - bbox_left) / 2);$(13_10)yy = bbox_bottom - ((bbox_bottom - bbox_top) / 2);$(13_10)$(13_10)//check for chairs around table and assign them to table$(13_10)//automatically detect chairs$(13_10)chair1 = instance_nearest(xx - searchDistance, yy, obj_chair);//left$(13_10)chair2 = instance_nearest(xx, yy - searchDistance, obj_chair);//top$(13_10)chair3 = instance_nearest(xx + searchDistance, yy, obj_chair);//right$(13_10)chair4 = instance_nearest(xx, yy + searchDistance, obj_chair);//top$(13_10)chairList = [chair1, chair2, chair3, chair4];$(13_10)$(13_10)//initial number of chairs available$(13_10)chairsAvailable = chairs; $(13_10)$(13_10)//layer depth$(13_10)depth = -45;$(13_10)$(13_10)//color table money scaling$(13_10)Rcount = 0;$(13_10)Bcount = 0;$(13_10)Ycount = 0;$(13_10)scaleArray = [0, 0, .25,.5,.75];$(13_10)scaling = 1;$(13_10)"
//gets center point of bounding box
xx = bbox_right - ((bbox_right - bbox_left) / 2);
yy = bbox_bottom - ((bbox_bottom - bbox_top) / 2);

//check for chairs around table and assign them to table
//automatically detect chairs
chair1 = instance_nearest(xx - searchDistance, yy, obj_chair);//left
chair2 = instance_nearest(xx, yy - searchDistance, obj_chair);//top
chair3 = instance_nearest(xx + searchDistance, yy, obj_chair);//right
chair4 = instance_nearest(xx, yy + searchDistance, obj_chair);//top
chairList = [chair1, chair2, chair3, chair4];

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