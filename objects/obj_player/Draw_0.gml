draw_sprite_ext(sprite_index, image_index, x, y, 1, yscale, rotation, c_white, 1);

draw_text(x, y-20, $"{vx}, {vy}");
draw_set_colour(c_red);
draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);