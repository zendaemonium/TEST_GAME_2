/// @function                scrPlayerMove(_xsp, _ysp, _collidables)
/// @description            Move x and y positions, checking for collisions
/// @param                    xsp                x velocity of the plauer
/// @param                    ysp                y velocity of the player
/// @param                    _collidables    objects, instances, or tilemaps that can be collided with
/// @return onGroundFlag           

function scrPlayerMove(_xsp = 0, _ysp = 0, _collidables)
{
    
    //store x direction sign (+1 or -1 or 0)
    var _xSign = 0;
    if _xsp != 0 
	{
        _xSign = sign(_xsp);
    }
    
    //store y direction sign (+1 or -1 or 0)
    var _ySign = 0;
    if _ysp != 0 
	{
        _ySign = sign(_ysp);
    }
    
    //collision flags
    var _xCollisionFlag = false;
    var _yCollisionFlag = false;
	
    //distance increment to check each loop 
	var _increment = 0.5;

//X Axis Collision and Movement ===============================================================================================
   
   if _xsp != 0 
   {      
        //check each increment of x distance until a collision is found,
        //then move back one increment
        for(var i = 0; abs(i) <= abs(_xsp); i += (_xSign*_increment)){
            if place_meeting(x+i,y,_collidables)
			{
                _xCollisionFlag = true;
                _xsp = i-(_xSign*_increment);
                i = _xsp+_xSign;
            }
        }
    }
    
    x += _xsp; //add xsp to x position
    
	
//Y Axis Collision and Movement ===============================================================================================
	
	
	_increment = 0.5;
	var _onGroundFlag = place_meeting(x,y+_increment,_collidables) and _ysp >= 0; //flag for if the player is on the ground or not
	if _onGroundFlag {
		_ysp = 0;
	}
	
	//falling
    if _ysp >0 
	{
	    for(var i = 0; i <= _ysp+_increment; i+= _increment){
	        //check each increment of y distance until a collision is found,
	        //then snap to ground
	        if place_meeting(x,y+i,_collidables)
			{
	            _yCollisionFlag = true;
				_onGroundFlag = true;
	            _ysp = (floor(y+i)-y); //go back one pixel, then round up to snap to floor
	            i = _ysp+1; //break the loop
	        }
	    }
	//rising	
	}
	else if _ysp < 0 
	{
	    for(var i = 0; i >= _ysp; i-= _increment){
	        //check each increment of y distance until a collision is found,
	        //then move back one increment
	        if place_meeting(x,y+i,_collidables)
			{
	            _yCollisionFlag = true;
	            _ysp = i+_increment;
	            i = _ysp-1; //break the loop
	        }
	    }
	}
	
    y += _ysp; //move y to (y + ysp)
    
	//if onGround, ysp = 0. Otherwise, apply gravity.
	if _onGroundFlag 
	{
		ysp = 0;	
	} 
	else 
	{
		ysp += grav;
	}
	
    return _onGroundFlag;
}