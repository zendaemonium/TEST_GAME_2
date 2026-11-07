function scrSetBounds(_x1,_y1,_x2,_y2){
    var _leftX = _x1 < _x2 ? _x1: _x2;
    var _rightX = _leftX == _x1 ? _x2: _x1;


    image_xscale = abs(_x2-_x1)/sprite_get_width(sprite_index);
    image_yscale = abs(_y2-_y1)/sprite_get_height(sprite_index);
    
    
    x = _leftX+(sprite_xoffset*image_xscale);
    y = _y1+(sprite_yoffset*image_yscale);
}