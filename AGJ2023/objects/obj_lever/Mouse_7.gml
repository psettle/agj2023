/// @description Insert description here
// You can write your code in this editor


event_inherited();
var _offsets = [0.0, 1.5, 3.0, 4.5, 6.0];
var _offset = _offsets[irandom(array_length(_offsets) - 1)]
var _length_s = 0.3;
if alarm_get(0) <= 0 {
	sound = audio_play_sound(snd_lever, 10, false, 1.0, _offset);
	alarm_set(0, _length_s * 60);
}

