/// @function                scrPlayerMove(_xsp, _ysp, _collidables)
/// @description            Move x and y positions, checking for collisions
/// @param                    xsp                x velocity of the plauer
/// @param                    ysp                y velocity of the player
/// @param                    _collidables    objects, instances, or tilemaps that can be collided with
/// @return {xCollision, yCollision}            

function scrPlayerMove(_xsp = 0, _ysp = 0, _collidables){
    
    //x direction
    var _xSign = 0;
    if _xsp != 0 {
        _xSign = sign(_xsp);
    }
    
    //y direction
    var _ySign = 0;
    if _ysp != 0 {
        _ySign = sign(_ysp);
    }
    
    //collision flags
    var _xCollision = false;
    var _yCollision = false;
    

    if _xsp != 0 {
        var _increment = 0.5;
        
        //check each increment of x distance until a collision is found,
        //then move back one increment
        for(var i = 0; abs(i) <= abs(_xsp); i += (_xSign*_increment)){
            if place_meeting(x+i,y,_collidables){
                _xCollision = true;
                _xsp = i-(_xSign*_increment);
                i = _xsp+_xSign;
            }
        }
    }
    
    x += _xsp; //move x to (x + xsp)
    
    
    for(var i = 0; i <= _ysp; i+= 0.5){
        var _increment = 0.5;
        
        //check each increment of y distance until a collision is found,
        //then move back one increment
        if place_meeting(x,y+(_ySign*i),_collidables){
            _yCollision = true;
            _ysp = i-0.5;
            i = ysp+1;
        }
    }
    
    y += _ysp; //move y to (y + ysp)
    
    return {_xCollision, _yCollision};
}