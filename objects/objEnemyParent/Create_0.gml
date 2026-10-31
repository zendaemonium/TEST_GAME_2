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

function LineOfSight(_target=objPLAYER)
{
	var _canSeeTarget = true;
	var _distance = distance_to_object(_target);
	var _angle = point_direction(x,y,_target.x,_target.y)-90
	//ray cast
	
	for(i = 0; i < _distance; i++)
	{
		var _x = lengthdir_x(i, _angle)
		var _y = lengthdir_y(i, _angle)
		
		//checks if a thing is in the way
		var _collision = collision_point(_x, _y, objPLAYER.collidables, false, true);
		
		if _collision != noone
		{
			_canSeeTarget = false;
			i = _distance+1; //break loop
		}
		//if hits terrain, make false
	}
	return _canSeeTarget;
}