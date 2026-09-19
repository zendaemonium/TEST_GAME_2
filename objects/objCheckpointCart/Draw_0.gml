draw_self();

if selecting == true
{
	var _xpos = x+50;
	var _ypos = bbox_top-20;
	
	//draw selecting sprite at xpos, ypos
	draw_sprite_ext(sprCharacterSelector, selectIndex+1, _xpos, _ypos, 1, 1, 0, c_white, 1);
}
	
