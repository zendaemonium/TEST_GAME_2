/// @function                scrEnemyMove(_xsp, _ysp, _collidables)
/// @description            Move x and y positions, checking for collisions
/// @param                    xsp                x velocity of the plauer
/// @param                    ysp                y velocity of the player
/// @param                    _collidables    objects, instances, or tilemaps that can be collided with
/// @return onGroundFlag           


function scrEnemyMove(_collidables = objSolid){
	
		//COLLISION FLAGS
		var _grounded = groundedCheck(noone,_collidables);
		if _grounded and ysp < 0 
		{
			_grounded = false;
		}
		
		var _headCollide = false;
		var _sideCollide = false;
		
		if place_meeting(x + xsp,y,_collidables)
		{
			_sideCollide = true;
		}
		if !_sideCollide
		{
			x += xsp;
		}
		
		
		
		if !_grounded
		{
			ysp += 0.1;
			if place_meeting(x,y+ysp,_collidables) 
			{
				if ysp > 0 
				{
					y = floor(y);
					for (var _i = 0; _i <= ysp+1; _i +=1)
					{
						if place_meeting(x,y+_i,_collidables){
							y = y+_i-1;
							_i = ysp+2;
						}
					}
					_grounded = true;
				} 
				else 
				{
					_headCollide = true;
				}
			} 
		}
		if !_headCollide and !_grounded
		{
			y +=ysp 
		}
		
		if _grounded == true 
		{
			y= round(y);
		}
		return _grounded;
}

function groundedCheck(_id = noone, _collidables = objSolid)
{
	if _id != noone
	{
		return place_meeting(_id.x,_id.y+1,_collidables);
	}
	return place_meeting(x,y+1,_collidables);
}
