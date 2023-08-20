/// @description Insert description here
// You can write your code in this editor

expanded_instance = pointer_null
expanded_x_scale = 1.0
expanded_y_scale = 1.0
on_click = function() {
	if !visible {
		return;	
	}
	if expanded_instance == pointer_null {
	expanded_instance = instance_create_layer(0, 0, "Instances", expanded_object);
	expanded_instance.depth = depth - 2;
	expanded_instance.image_xscale = expanded_x_scale
	expanded_instance.image_yscale = expanded_y_scale
		inst_conductor.disable_all();
	} else {
		instance_destroy(expanded_instance)
		expanded_instance = pointer_null;
		inst_conductor.enable_phase();
	}
}

is_expanded = function() {
	return expanded_instance != pointer_null;
}

visible = false;
disabled = true;
