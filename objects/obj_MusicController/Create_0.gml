/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 642031BD
/// @DnDArgument : "code" "if(room == roomHomeScreen) {$(13_10)	audio_stop_sound(snd_levelMusic);$(13_10)	audio_play_sound(snd_introMusic, 1000, true);$(13_10)} else if(room == roomTavern) {$(13_10)	audio_stop_sound(snd_introMusic)$(13_10)	audio_play_sound(snd_levelMusic, 1000, true);$(13_10)}$(13_10)"
if(room == roomHomeScreen) {
	audio_stop_sound(snd_levelMusic);
	audio_play_sound(snd_introMusic, 1000, true);
} else if(room == roomTavern) {
	audio_stop_sound(snd_introMusic)
	audio_play_sound(snd_levelMusic, 1000, true);
}