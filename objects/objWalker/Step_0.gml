event_inherited()
ysp+=0.1 //gravity

if !aggro{
	if distance_to_object(objPLAYER) < 400{
		aggro = true
	}
}

//walking behavior
if aggro{
	xsp = playerdirection
}

if place_meeting(x, y+1, objSOLID) //check if on ground, set ysp to 0
		{
			ysp=0
		}
		image_xscale = playerdirection
		move_and_collide(xsp, ysp, objSOLID)