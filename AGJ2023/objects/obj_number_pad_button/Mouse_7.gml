if (!_control.disabled) {
	// Sound effect
	audio_play_sound(snd_numpad_beep, 1, false, 1, 0, random_range(0.5, 1.0));
	
	// Add to current four-digit sequence
	_control._add_to_sequence(_number, _control.sequence)
	show_debug_message(_control.sequence);
	
	// Button stays light for 0.25s more
	var _duration_s = 0.25;
	alarm_set(0, _duration_s * 60);
}