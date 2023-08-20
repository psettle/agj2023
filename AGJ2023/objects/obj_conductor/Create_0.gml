/// @description Insert description here
// You can write your code in this editor
current_phase = 1;

function disable_all() {
	inst_slider_feeder_scale.disabled = true;
	inst_slider_feeder_freq.disabled = true;
	inst_dial_lb1.disabled = true;
	inst_dial_lb2.disabled = true;
	inst_dial_lb3.disabled = true;
	inst_dial_lb4.disabled = true;
	inst_ty1.disabled = true;
	inst_ty2.disabled = true;
	inst_ty3.disabled = true;
	inst_ty4.disabled = true;
	inst_numpad_year.disabled = true;
	inst_launch_button.disabled = true;
	inst_level_painkiller.disabled = true;
}

function reset() {
	disable_all();
}

function enable_phase_1() {
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
	inst_numpad_year.disabled = false;
	
	inst_numpad_year.show_label = true;
	
	inst_paw.visible = true;
	inst_paw.disabled = false
	
	inst_light_phase2.light_colour = 2;
	inst_light_phase3.light_colour = 1;
}

function enable_phase_4() {
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

function on_slider_update(_slider) {

}

function on_dial_update(_dial) {
	
}

function on_lever_update(_lever) {
	
}

function on_number_input(_value) {
	
}

function on_button_press() {
	
}

function on_switch_update(_switch) {
	
}

reset();
inst_warning_note.disabled = false;
inst_warning_note.visible = true;
inst_warning_note.on_click();