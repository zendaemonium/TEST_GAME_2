hp=1;
combatDamageTaken = 1;
alive=true;

aggro=false;

xsp=0;
ysp=0;

dir=1;

playerDirection = -1;

immuneFrameMax = 30
immuneFrames = 0

function lineOfSight(_target=objPLAYER, _viewX = x, _viewY = y)
{
	var _canSeeTarget = true;
	var _distance = distance_to_object(_target);
	var _angle = point_direction(_viewX,_viewY,_target.x,_target.y);
	
	//ray cast
	for(i = 0; i < _distance; i++)
	{
		
		var _x = lengthdir_x(i, _angle) + _viewX;
		var _y = lengthdir_y(i, _angle) + _viewY;
		
		//checks if a thing is in the way
		var _collision = collision_point(_x, _y, objPLAYER.collidables, false, true);
		
		if _collision != noone
		{
			_canSeeTarget = false;
			i = _distance+1; //break loop
		}
		
		if global.developerModeActive {
			draw_point_colour(_x,_y,c_red);
		}
		//if hits terrain, make false
	}
	return _canSeeTarget;
}