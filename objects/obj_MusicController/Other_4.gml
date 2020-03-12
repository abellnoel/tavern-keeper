/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 476B3F25
/// @DnDArgument : "code" "//checks the room you are in$(13_10)if(room == roomHomeScreen) {$(13_10)	//stops level music$(13_10)	audio_stop_sound(snd_levelMusic);$(13_10)	//checks if intro music is already playing. If not then play music.$(13_10)	if(!audio_is_playing(snd_introMusic)) {$(13_10)		audio_play_sound(snd_introMusic, 1000, true);$(13_10)	}$(13_10)} else if(room == roomTavern) {$(13_10)	//stops intro music$(13_10)	audio_stop_sound(snd_introMusic);$(13_10)	//checks if level music is already playing. If not then play music.$(13_10)	if(!audio_is_playing(snd_levelMusic)) {$(13_10)		audio_play_sound(snd_levelMusic, 1000, true);$(13_10)	}$(13_10)}$(13_10)"
//checks the room you are in
if(room == roomHomeScreen) {
	//stops level music
	audio_stop_sound(snd_levelMusic);
	//checks if intro music is already playing. If not then play music.
	if(!audio_is_playing(snd_introMusic)) {
		audio_play_sound(snd_introMusic, 1000, true);
	}
} else if(room == roomTavern) {
	//stops intro music
	audio_stop_sound(snd_introMusic);
	//checks if level music is already playing. If not then play music.
	if(!audio_is_playing(snd_levelMusic)) {
		audio_play_sound(snd_levelMusic, 1000, true);
	}
}