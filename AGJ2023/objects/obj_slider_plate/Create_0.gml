/// @description Initialize Knob
knob = instance_create_layer(self.x, self.y, "Instances", obj_slider_knob);
knob.plate = self
knob.image_yscale = self.image_yscale;
knob.image_xscale = self.image_yscale;
knob.y = self.y + 16 * image_yscale;
knob.depth = self.depth - 1;
knob.x =  x + 48 - 16 * image_yscale;
knob.min_x = knob.x
knob.max_x = bbox_right - 48 + 16 * image_yscale - (knob.bbox_right - knob.bbox_left);
knob_value = 0
show_label = false;
label = "Placeholder"
disabled = true;