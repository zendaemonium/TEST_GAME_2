

var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

if global.developerModeActive 
{
	
	//font
	var _previousFont = draw_get_font(); //reset to previous font after
	draw_set_font(fontArial28);
	
	//top left corner, show that dev mode is active
	draw_text(10,10, "DEVELOPER MODE ACTIVE")
	
	//draw controls
	draw_set_halign(fa_right);
	draw_text(_guiWidth - 20, _guiHeight -240, "DEV CONTROLS \n V - Toggle Dev Mode \n N - Go to next room \n P - Go to previous room \n D - die :(")
	
	
//draw various variables that may be useful for debugging ==========================
	//position and horizontal alignment
	draw_set_halign(fa_right);
	var _x = _guiWidth- 20;
	var _y = 40;
	var _spacing = 40;


	//variables displayed in top right corner
	draw_text_scribble(_x, _y, "X: \t\t" + string_format(objPLAYER.x, 1, 2));
	_y+=_spacing;
	
	draw_text_scribble(_x, _y, "Y: \t\t" + string_format(objPLAYER.y, 1, 2));
	_y+=_spacing;
	
	draw_text_scribble(_x, _y, "xsp: \t\t" + string_format(objPLAYER.xsp, 1, 2));
	_y+=_spacing;
	
	draw_text_scribble(_x, _y, "ysp: \t\t" + string_format(objPLAYER.ysp, 1, 2));
	_y+=_spacing;
	
	draw_text_scribble(_x, _y, "Character Index: " + string(global.characterIndex));
	_y+=_spacing;
	

	//ADD more variables here as needed
	
	
//end drawing =======================================================================	
	
	//reset font and halign
	draw_set_font(_previousFont);
	draw_set_halign(fa_left);
}