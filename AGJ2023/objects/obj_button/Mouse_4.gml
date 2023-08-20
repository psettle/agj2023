/// @description Press Button
// You can write your code in this editor



if !disabled {
	sprite_index = spr_button_open_pressed;
	var _duration_s = 1.25
	alarm_set(0, _duration_s * 60)
	audio_play_sound(snd_purr, 10, false, 1);
	inst_conductor.on_button();
}
