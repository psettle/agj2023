image_alpha = all_alpha < 0 ? 0 : all_alpha
draw_self();
draw_set_alpha(image_alpha)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y, "Credits");