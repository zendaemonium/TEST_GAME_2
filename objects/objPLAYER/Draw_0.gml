var _color = c_white

if state == Player_State.STATEHURT{
	_color = c_red
}

draw_sprite_ext(sprite_index, image_index, x, y, dir, 1, 0, _color, image_alpha);

draw_set_color(c_white); //default