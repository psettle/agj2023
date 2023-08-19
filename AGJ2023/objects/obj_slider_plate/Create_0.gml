/// @description Initialize Knob
knob = instance_create_layer(self.x, self.y, "Instances", obj_slider_knob);
knob.plate = self
knob.image_yscale = self.image_yscale;
knob.y = self.y;
knob.depth = self.depth - 1;
knob.x += 16;
knob_value = 0;
show_label = false;
label = "Placeholder"