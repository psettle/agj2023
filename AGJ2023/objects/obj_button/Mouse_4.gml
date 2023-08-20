if !disabled {
	sprite_index = spr_button_open_pressed;
	
	// press down sound (cat purr)
	audio_play_sound(snd_purr, 10, false, 1);
	// press up sound
	var _duration_s = 3;
	alarm_set(0, _duration_s * 60);
	
	// Exit game after 
	alarm_set(1, 5 * 60);
}
