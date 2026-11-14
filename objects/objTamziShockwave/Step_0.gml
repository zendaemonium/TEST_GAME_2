//shockwave fade out (expiration check)

var _expired = false;

fadeDelay -=1
 if fadeDelay <= 0
 {
	image_alpha -= 0.01; //how much the shockwave fades every frame
	if image_alpha <= 0
	{
		_expired = true;
	}
 }

//collision check:

var _collided = false;

if place_meeting(x+xsp, y-1, objPLAYER.collidables) //if hit wall
{
		_collided = true;
}

if not collision_point(bbox_left+xsp, y+1, objPLAYER.collidables, 0, 0) or
not collision_point(bbox_right+xsp, y+1, objPLAYER.collidables, 0, 0) //if not on ground
{
		_collided = true;
}

x += xsp;

if _collided or _expired
{
	instance_destroy();
}