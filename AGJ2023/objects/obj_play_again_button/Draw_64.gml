draw_self();
image_alpha = all_alpha < 0 ? 0 : all_alpha
draw_set_alpha(image_alpha)
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_text(x, y, "Play again");
draw_set_alpha(1.0)
draw_text(room_width / 2, room_height / 2, "You didn't stop the launch.");