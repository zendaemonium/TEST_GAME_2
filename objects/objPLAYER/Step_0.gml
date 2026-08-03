ysp+=grav; //gravity

switch(state){
	case Player_State.STATEFREE:
	
	xsp=0
	
		if keyboard_check(vk_left) //player controls
		{
			xsp=-maxspeed;
		}

		if keyboard_check(vk_right)
		{
			xsp=+maxspeed;
		}

		if place_meeting(x, y+1, objSOLID) //check if on ground, set ysp to 0
		{
			ysp=0
			if keyboard_check(vk_up)
			{
				ysp=jumpspeed;
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
		if place_meeting(x, y+1, objSOLID)
		{
			ysp=0
			xsp=0
		}
		
	break;
}

if xsp != 0 {
	dir=sign(xsp)
	image_xscale = dir
	}