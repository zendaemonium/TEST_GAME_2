shown = false;
showStamina = false;
image_index = 0;
image_speed = 0;

//tamzi's health decider
if global.characterIndex == 0 
{
	if global.health == 3 
	{
		image_index = 0;
	}
	if global.health == 2 
	{
		image_index = 1;
	}
	if global.health == 1 
	{
		image_index = 2;
	}
	if global.health == 0 
	{
		image_index = 3;
	}
}

//sekhet's health decider
if global.characterIndex == 1 
{
	if global.health == 3 
	{
		image_index = 4;
	}
	if global.health == 2 
	{
		image_index = 5;
	}
	if global.health == 1 
	{
		image_index = 6;
	}
	if global.health == 0 
	{
		image_index = 7;
	}
}

//dayan's health decider, though here he has three health rather than 4 (REVISE!)
if global.characterIndex == 2 
{
	if global.health == 3 
	{
		image_index = 8;
	}
	if global.health == 2 
	{
		image_index = 9;
	}
	if global.health == 1 
	{
		image_index = 10;
	}
	if global.health == 0 
	{
		image_index = 11;
	}
}

//mallaidh's health decider, though here she has three health rather than two (REVISE!)
if global.characterIndex == 3 
{
	if global.health == 3 
	{
		image_index = 12;
	}
	if global.health == 2 
	{
		image_index = 13;
	}
	if global.health == 1 
	{
		image_index = 14;
	}
	if global.health == 0 
	{
		image_index = 15;
	}
}