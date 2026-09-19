x = objPLAYER.x+(objPLAYER.dir*35);
y = objPLAYER.y-(35);

if keyboard_check_pressed(ord("Z"))
{
	active = true;
	activeFrames = ATTACKDURATION;
}
		
if active 
{
	activeFrames-=1;
	if activeFrames == 0
	{
		active= false;
	}
}

visible = active;