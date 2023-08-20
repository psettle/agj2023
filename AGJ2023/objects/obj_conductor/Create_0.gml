/// @description Insert description here
// You can write your code in this editor
current_phase = 1;

function disable_all() {
	var _val = true;
	inst_slider_feeder_scale.disabled = _val;
	inst_slider_feeder_freq.disabled = _val;
	inst_dial_lb1.disabled = _val;
	inst_dial_lb2.disabled = _val;
	inst_dial_lb3.disabled = _val;
	inst_dial_lb4.disabled = _val;
	inst_ty1.disabled = _val;
	inst_ty2.disabled = _val;
	inst_ty3.disabled = _val;
	inst_ty4.disabled = _val;
	inst_numpad_year.disabled = _val;
	//inst_launch_button.disabled = _val;
	inst_level_painkiller.disabled = _val;
}

function enable_all() {
	var _val = false;
	inst_slider_feeder_scale.disabled = _val;
	inst_slider_feeder_freq.disabled = _val;
	inst_dial_lb1.disabled = _val;
	inst_dial_lb2.disabled = _val;
	inst_dial_lb3.disabled = _val;
	inst_dial_lb4.disabled = _val;
	inst_ty1.disabled = _val;
	inst_ty2.disabled = _val;
	inst_ty3.disabled = _val;
	inst_ty4.disabled = _val;
	inst_numpad_year.disabled = _val;
	//inst_launch_button.disabled = _val;
	inst_level_painkiller.disabled = _val;
}

function reset() {
	disable_all();
}

function enable_phase_1() {
	enable_all();
	inst_dial_lb1.disabled = false;
	inst_dial_lb2.disabled = false;
	inst_dial_lb3.disabled = false;
	inst_dial_lb4.disabled = false;
	inst_ty1.disabled = false;
	inst_ty2.disabled = false;
	inst_ty3.disabled = false;
	inst_ty4.disabled = false;
	
	inst_dial_lb1.show_label = true;
	inst_dial_lb2.show_label = true;
	inst_dial_lb3.show_label = true;
	inst_dial_lb4.show_label = true;
	inst_ty1.show_label = true;
	inst_ty2.show_label = true;
	inst_ty3.show_label = true;
	inst_ty4.show_label = true;
	
	inst_light_phase1.light_colour = 1;
}

function enable_phase_2() {
	enable_all();
	inst_slider_feeder_scale.disabled = false;
	inst_slider_feeder_freq.disabled = false;
	inst_level_painkiller.disabled = false;
	
	inst_slider_feeder_scale.show_label = true;
	inst_slider_feeder_freq.show_label = true;
	inst_level_painkiller.show_label = true;
	
	inst_poloroid.visible = true;
	inst_poloroid.disabled = false
	
	inst_light_phase1.light_colour = 2;
	inst_light_phase2.light_colour = 1;
}

function enable_phase_3() {
	enable_all();
	inst_numpad_year.disabled = false;
	
	inst_numpad_year.show_label = true;
	
	inst_paw.visible = true;
	inst_paw.disabled = false
	
	inst_light_phase2.light_colour = 2;
	inst_light_phase3.light_colour = 1;
}

function enable_phase_4() {
	enable_all();
	inst_launch_button.disabled = false;
	
	inst_launch_button.show_label = true;
	
	inst_light_phase3.light_colour = 2;
}


function enable_phase() {
switch (current_phase) {
	case 1: enable_phase_1(); break;
	case 2: enable_phase_2(); break;
	case 3: enable_phase_3(); break;
	case 4: enable_phase_4(); break;
}
}

function is_phase_1_complete() {
	return inst_ty1.is_switch_on && !inst_ty2.is_switch_on && inst_ty3.is_switch_on && !inst_ty4.is_switch_on &&
		   inst_dial_lb1.state = 1 && inst_dial_lb2.state = 1 && inst_dial_lb3.state = 1 && inst_dial_lb4.state = 1;
}

function is_phase_2_complete() {
	return inst_slider_feeder_scale.knob_value > 0.6 &&
	       inst_slider_feeder_freq.knob_value < 0.8 &&
		   inst_slider_feeder_freq.knob_value > 0.6 &&
		   inst_slider_feeder_scale.knob_value < 0.8;
}

function is_phase_3_complete() {
	return inst_numpad_year.is_correct;
} 

function on_update() {
switch (current_phase) {
	case 1:
		if is_phase_1_complete() {
			current_phase = 2;
			enable_phase();
		}
		break;
	case 2:
		if is_phase_2_complete() {
			current_phase = 3;
			enable_phase();
		}
		break;
	case 3:
		if is_phase_3_complete() {
			current_phase = 4;
			enable_phase();
		}
		break;
}
}

function on_button() {
	if current_phase == 4 {
		//TODO end game
	}
}


reset();
inst_warning_note.disabled = false;
inst_warning_note.visible = true;
inst_warning_note.on_click();