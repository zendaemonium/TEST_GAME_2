event_inherited(); //use parent step event

ysp+=0.1; //gravity

if !aggro
{
	if distance_to_object(objPLAYER) < 400
	{
		aggro = true;
	}
}

//walking behavior
if aggro
{
	xsp = playerDirection * 2.5;
}

if place_meeting(x, y+1, objSolid) //check if on ground, set ysp to 0
{
	ysp=0;
}

image_xscale = playerDirection;

//FIXME: Enemy movement code is janky. Can get stuck in wall
move_and_collide(xsp, ysp, objSolid);