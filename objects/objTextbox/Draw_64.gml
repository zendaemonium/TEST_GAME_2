

var _guiWidth = display_get_gui_width();
var _guiHeight = display_get_gui_height();

#region draw Rectangle ==============================================

var _boxPadding = 20;	//textbox is 20px from screen edge
var _boxHeight = 100; //150px tall textbox

draw_set_colour(c_gray);

draw_rectangle(_boxPadding,	//top left x
				_boxPadding, //top left y
				_guiWidth-_boxPadding, //bottom right x
				_boxPadding+_boxHeight, //bottom right y
				0)

draw_set_colour(c_white);
#endregion

#region draw Text ===================================================

var _textPadding = 10;	//text is 10px from box edge
var _textWidth = _guiWidth -  (_boxPadding + _textPadding); //width of text line

var _textX = _boxPadding + _textPadding;	//top left x of text
var _textY = _boxPadding + _textPadding;	//top left y of text


draw_set_font(fontArial12);
draw_text_scribble_ext(_textX, _textY, text, _textWidth); //scribble draws text


#endregion

//draw "press Z to close"
draw_text_scribble_ext(_textX, _boxPadding+_boxHeight - 20, "[fontArial8]Press Z to close", _textWidth); 