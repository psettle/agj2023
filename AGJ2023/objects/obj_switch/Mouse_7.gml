// Toggle switch
if !disabled {
	is_switch_on = !is_switch_on;
	audio_play_sound(snd_switch_click, 1, false);
	inst_conductor.on_update();
}
