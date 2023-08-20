/// @description Insert description here
// You can write your code in this editor
var _candidate_x = event_data[?"posX"] + drag_offset_x;
var _width = bbox_right - bbox_left;

if _candidate_x < min_x {
	_candidate_x = min_x;	
}

if _candidate_x > max_x {
	_candidate_x = max_x;	
}

x = _candidate_x;
self.plate.knob_value =  (x - min_x) / (max_x - min_x);
