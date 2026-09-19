if place_meeting(x, y, objPLAYER) and not selecting
{
	if keyboard_check_pressed(ord("X")) //start selecting 
	{
		selecting =  true
		objPLAYER.state = PlayerState.STATESELECT
	}
}
else if selecting == true
{
	if keyboard_check_pressed(vk_right) //selection +1
	{
		selectIndex = selectIndex+1;
		if selectIndex == 4 //loop around to minimum index
		{
			selectIndex = 0;
		}
	}
	if keyboard_check_pressed(vk_left) //selection -1
	{
		selectIndex = selectIndex-1;
		if selectIndex == -1 //loop around to max index
		{
			selectIndex = 3;
		}
	}
	if keyboard_check_pressed(ord("X")) //finish selecting
	{
			//SWITCHING CHARACTER
			selecting =  false;
			objPLAYER.state = PlayerState.STATEFREE;
			global.characterIndex = selectIndex;
			global.health = global.maxHealth;
			with objPLAYER {
				characterTransition();
			}
	}
}