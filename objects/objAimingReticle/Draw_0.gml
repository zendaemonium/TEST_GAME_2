if objPLAYER.state == PlayerState.STATEAIM{
	
		var _drawY = yOffset + objPLAYER.y;
		var _drawX = objPLAYER.x;
		
		draw_sprite_ext(sprAimArrowPlace, 0, _drawX, _drawY, 1, 1, angle, c_white, image_alpha);
}