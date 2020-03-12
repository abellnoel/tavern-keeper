/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 25CEECC2
/// @DnDArgument : "code" "/// @description CUSTOMER SATISFIED TIMER TO LEAVE $(13_10)bubble = instance_create_layer(x, y, "Instances", obj_happyBubble);$(13_10)servePassed = true;$(13_10)instance_destroy(foodOrDrink); //should exist if customer was served$(13_10)satisfactionArray = [snd_satisfaction1, snd_satisfaction2, snd_satisfaction3]; $(13_10)satisfactionChoice = satisfactionArray[irandom(2)];$(13_10)audio_play_sound(satisfactionChoice, 500, false);"
/// @description CUSTOMER SATISFIED TIMER TO LEAVE 
bubble = instance_create_layer(x, y, "Instances", obj_happyBubble);
servePassed = true;
instance_destroy(foodOrDrink); //should exist if customer was served
satisfactionArray = [snd_satisfaction1, snd_satisfaction2, snd_satisfaction3]; 
satisfactionChoice = satisfactionArray[irandom(2)];
audio_play_sound(satisfactionChoice, 500, false);