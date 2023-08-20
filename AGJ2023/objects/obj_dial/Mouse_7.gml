/// @description Insert description here
// You can write your code in this editor


event_inherited();
var _length_s = 0.5;
var _offset = random_range(0, audio_sound_length(snd_dial) - _length_s);
if (alarm_get(0) <= 0 && !disabled) {
	sound = audio_play_sound(snd_dial, 10, false, 1.0, _offset);
	alarm_set(0, _length_s * 60);
}

