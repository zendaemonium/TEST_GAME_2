ysp+=0.1 //gravity

switch(state){
	case Player_State.STATEFREE:
	
	xsp=0
	
		if keyboard_check(vk_left) //player controls
		{
			xsp=-3
		}

		if keyboard_check(vk_right)
		{
			xsp=+3.6
		}

		if place_meeting(x, y+1, objSOLID)
		{
			ysp=0
			if keyboard_check(vk_up)
			{
				ysp=-3
			}
			}

//move player
		move_and_collide(xsp, ysp, objSOLID)
	
	break;
	
	case Player_State.STATEHURT:
	
		stunDuration-=1
		
		if stunDuration==0{
			
			stateTransition(Player_State.STATEFREE)
			
		}
		
		move_and_collide(xsp, ysp, objSOLID)
		
	break;
}