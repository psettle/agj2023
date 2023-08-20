curr_image_index = 0;

flash_light = function(_duration_s) {
	curr_image_index = 1
	alarm_set(0, _duration_s * 60);
}