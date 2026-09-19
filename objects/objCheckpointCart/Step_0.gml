if place_meeting(x, y, objPLAYER) and not selecting
{
	if keyboard_check_pressed(ord("X"))
	{
		selecting =  true
		objPLAYER.state = Player_State.STATESELECT
	}
}
else if selecting == true
{
	if keyboard_check_pressed(vk_right)
	{
		selectindex = selectindex+1
		if selectindex == 4
		{
			selectindex = 0
		}
	}
	if keyboard_check_pressed(vk_left)
	{
		selectindex = selectindex-1
		if selectindex == -1
		{
			selectindex = 3
		}
	}
	if keyboard_check_pressed(ord("X")){
			selecting =  false
			objPLAYER.state = Player_State.STATEFREE
			global.characterindex = selectindex
			global.health = global.maxhealth
			with objPLAYER {
				characterTransition()
			}
	}
}