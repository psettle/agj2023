/// @description Insert description here
// You can write your code in this editor
if !disabled {
	for(var _i = 0; _i < instance_number(obj_ui_icon); ++_i) {
		var _instance = instance_find(obj_ui_icon, _i);
		if _instance.id == self.id {
			continue;
		}
	
		if _instance.is_expanded() {
			_instance.on_click();
		}
	}

	on_click();	
}
