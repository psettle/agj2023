/// @description Insert description here
// You can write your code in this editor
var _candidate_x = event_data[?"posX"] + drag_offset_x;
var _width = bbox_right - bbox_left;
var _min_x = self.plate.x + 16 * image_xscale;
var _max_x = self.plate.bbox_right - 48 * image_xscale - _width;

if _candidate_x < _min_x {
	_candidate_x = _min_x;	
}

if _candidate_x > _max_x {
	_candidate_x =_max_x;	
}

x = _candidate_x;
show_debug_message("{0} {1} {2} {3}", x, _min_x, _max_x, self.plate.knob_value);
self.plate.knob_value =  (x - _min_x) / (_max_x - _min_x);
