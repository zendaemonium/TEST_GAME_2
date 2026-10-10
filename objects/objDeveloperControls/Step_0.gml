
if keyboard_check_pressed(ord("V")) 
{
	//toggle true/false
	global.developerModeActive = global.developerModeActive ? false : true;
}


if global.developerModeActive 
{
	if keyboard_check_pressed(190) // go to next room >
	{
		if room != room_last 
		{
			room_goto_next();
		}
	}
	if keyboard_check_pressed(188) // go to previous room <
	{
		if room != Room1
		{
			room_goto_previous();
		}
	}
	if keyboard_check_pressed(186) //lose one health ;
	{
		global.health -=1
	}
	if keyboard_check_pressed(222) // gain on health '
	{
		global.health +=1
	}
	if keyboard_check_pressed(221) // next horseman ]
	{
		global.characterIndex +=1
		if global.characterIndex >3
		{
			global.characterIndex = 0
		}
		with objPLAYER
			{
				characterTransition();
			}
	}
	if keyboard_check_pressed(219) // previous horseman [
	{
		global.characterIndex -=1
		if global.characterIndex <0
		{
			global.characterIndex = 3
		}
		with objPLAYER
			{
				characterTransition();
			}
	}
}