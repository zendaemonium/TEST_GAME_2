draw_self()
if selecting == true
	{
		var xpos = x+50
		var ypos = bbox_top-20
		
		draw_sprite_ext(sprCharacterSelector, selectindex+1, xpos, ypos, 1, 1, 0, c_white, 1)
	}
	
draw_text(x, y-100, "Selecting = " +string(selecting))