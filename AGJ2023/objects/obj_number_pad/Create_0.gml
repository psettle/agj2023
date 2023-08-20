disabled = false;
sequence = [];

function _add_to_sequence(_num, _arr) {
	if (array_length(_arr) < 4) {
		array_push(_arr, _num);
	}
	// Draw new digit in display
	var _digit_width = 48;
	var _border_width = 16;
	var _index = array_length(_arr);
	var _x_offset = image_xscale * ((_border_width * (_index + 1)) + (_digit_width * (_index - 1)))
	var _y_offset = image_yscale * 25;
	var _display_digit = instance_create_layer(x + _x_offset, y + _y_offset, "Instances", obj_number_pad_display_digit, 
	{
		_number : _num,
	});
	_display_digit.depth = self.depth - 1;
	_display_digit.image_xscale = self.image_xscale;
	_display_digit.image_yscale = self.image_yscale;
}


// Draw on number button instances
var _curr_row = 0;
var _curr_col = 0;

var _border_width_px = 16;
var _button_width_px = 80;
var _button_height_px = 112;
var _top_margin_px = 128;

for (var _i = 0; _i < 10; _i += 1) {
	var _x_offset = 0;
	var _y_offset = 0;
	
	if (_i ==0) {
		// Exception: 0 goes in bottom-most row in middle  col
		var _temp_row = 3;
		var _temp_col = 1;
		_x_offset = image_xscale * ((_border_width_px * (_temp_col + 1)) + (_button_width_px * _temp_col));
		_y_offset = image_yscale * (_top_margin_px + (_border_width_px * _temp_row) + (_button_height_px * _temp_row));
	} else {
		// Draw from left to right, top to bottom
		_x_offset = image_xscale * ((_border_width_px * (_curr_col + 1)) + (_button_width_px * _curr_col));
		_y_offset = image_yscale * (_top_margin_px + (_border_width_px * _curr_row) + (_button_height_px * _curr_row));
	
		_curr_col = _curr_col + 1;
		// Go to next row once you've reached 3 buttons in a row
		if (_curr_col > 2) {
			_curr_col = 0;
			_curr_row = _curr_row + 1;
		}	
	}
	
	// Create instance
	var _num_button = instance_create_layer(x + _x_offset, y + _y_offset, "Instances", obj_number_pad_button, 
	{
		_number : _i,
	});
	_num_button.depth = self.depth - 1;
	_num_button._control = self;
	_num_button.image_xscale = self.image_xscale;
	_num_button.image_yscale = self.image_yscale;
}


// Draw on lights
var _red_x_offset = image_xscale * _border_width_px;
var _red_y_offset = image_yscale * (_top_margin_px + (_border_width_px * 3) + (_button_height_px * 3));

red_button = instance_create_layer(x + _red_x_offset, y + _red_y_offset, "Instances", obj_number_pad_light, 
{
	_color : "red",
});
red_button.depth = self.depth - 1;
red_button.image_xscale = self.image_xscale;
red_button.image_yscale = self.image_yscale;


var _green_x_offset = image_xscale * ((_border_width_px * 3) + (_button_width_px * 2));
var _green_y_offset = image_yscale * (_top_margin_px + (_border_width_px * 3) + (_button_height_px * 3));

green_button = instance_create_layer(x +_green_x_offset, y + _green_y_offset, "Instances", obj_number_pad_light, 
{
	_color : "green",
});
green_button.depth = self.depth - 1;
green_button.image_xscale = self.image_xscale;
green_button.image_yscale = self.image_yscale;