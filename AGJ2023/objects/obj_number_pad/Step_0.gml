if (array_length(sequence) == 4 && !disabled) {
	disabled = true;
	var _duration_s = 1;

	if sequence[0] == 2 && sequence[1] == 0 && sequence[2] == 2 && sequence[3] == 2 {
		audio_play_sound(snd_numpad_correct, 1, false);
		_duration_s = 3600;
		green_button.flash_light(_duration_s);
		is_correct = true;
		inst_conductor.on_update();
	} else {
		audio_play_sound(snd_numpad_wrong, 1, false);

		red_button.flash_light(_duration_s);
		alarm_set(1, _duration_s * 60); // Reset number pad after
	}
}