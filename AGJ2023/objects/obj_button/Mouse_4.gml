/// @description Press Button
// You can write your code in this editor



if !disabled {
	sprite_index = spr_button_open_pressed;
	
	// press down sound
	audio_play_sound(snd_purr, 10, false, 1);
	// press up sound 0.5 sec after
	var _duration_s = 0.5;
	alarm_set(0, _duration_s * 60);
	
	// Exit game after 1.5 sec
	alarm_set(1, 1.5 * 60);
}
