if (array_length(sequence) == 4 && !disabled) {
	disabled = true;
	// TODO: Check if right game stage && seq matches solution
	// for now, it's always wrong
	audio_play_sound(snd_numpad_wrong, 1, false);
	var _duration_s = 1;
	red_button.flash_light(_duration_s);
	alarm_set(1, _duration_s * 60); // Reset number pad after
	
	
	//audio_play_sound(snd_numpad_correct, 1, false);
	//green_button.flash_light(_duration_s);
}