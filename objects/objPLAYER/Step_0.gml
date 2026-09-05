mask_index = defaultMask;


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
		
		//animation
		if abs(xsp)>0{
		//sprite_index = sprTamziPlaceWalk
		//sprite needs to be changed based on character
		}
		else if xsp==0{
		//sprite_index = sprTamziPlaceIdle
		//sprite needs to be changed based on character
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
	
	case Player_State.STATELEAVE:
	
		var _direction = sign(objLevelEndPathfindLocation.x - x)
		xsp = _direction * maxspeed
		
		move_and_collide(xsp, ysp, objSOLID)
	
		if place_meeting(x, y+1, objSOLID)
		{
			ysp=0
		}
		
		if distance_to_object(objLevelEndPathfindLocation) < 20
		{
			room_goto_next()
		}
		
		
	break;
	
	case Player_State.STATESELECT:
		
		xsp=0
		
		move_and_collide(xsp, ysp, objSOLID)
	
		if place_meeting(x, y+1, objSOLID)
		{
			ysp=0
		}
		
		
	break;
}

if xsp != 0 {
	dir=sign(xsp)
	image_xscale = dir
}

if bbox_top > room_height {
	//wait a second here
	x = currentGrace.x
	y = currentGrace.bbox_bottom
	ysp=0
	ysp=0
}
	
	