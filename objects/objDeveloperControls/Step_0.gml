
if keyboard_check_pressed(ord("V")) 
{
	//toggle true/false
	global.developerModeActive = global.developerModeActive ? false : true;
}


if global.developerModeActive 
{
	if keyboard_check_pressed(ord("N")) 
	{
		if room != room_last 
		{
			room_goto_next();
		}
	}
	if keyboard_check_pressed(ord("P")) 
	{
		if room != Room1
		{
			room_goto_previous();
		}
	}
	if keyboard_check_pressed(ord("D")) 
	{
		game_restart();
	}
}

	
	