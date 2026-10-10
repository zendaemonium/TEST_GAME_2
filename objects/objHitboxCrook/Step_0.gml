if global.characterIndex == 0 // tamzi hitbox
{
	image_xscale = 2
	x = objPLAYER.x+(objPLAYER.dir*100);
	y = objPLAYER.y-(100);
}
else if global.characterIndex == 1 //sekhet hitbox, REVISE
{
	image_xscale = 1
	x = objPLAYER.x+(objPLAYER.dir*50);
	y = objPLAYER.y-(30);
}
else if global.characterIndex == 2 //dayan hitbox, REVISE
{
	image_xscale = 1.50
	x = objPLAYER.x+(objPLAYER.dir*50);
	y = objPLAYER.y-(30);
}
else if global.characterIndex == 3 //mallaidh hitbox
{
	image_xscale = 1
	x = objPLAYER.x+(objPLAYER.dir*50);
	y = objPLAYER.y-(30);
}

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