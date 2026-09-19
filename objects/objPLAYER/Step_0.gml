mask_index = defaultMask;

var _onGround = false;
switch(state){
	case PlayerState.STATEFREE:
	
		xsp=0;
		if keyboard_check(vk_left) //player controls
		{
			xsp=-maxspeed;
		}

		if keyboard_check(vk_right)
		{
			xsp=+maxspeed;
		}
		
		//move player and store if they are on the ground
		_onGround = scrPlayerMove(xsp, ysp, objSolid);
		
		//if on the ground, player can jump
		if _onGround and keyboard_check(vk_up)
		{
			ysp=jumpspeed;
		}
		
		
		//animation
		//TODO: set sprites to be used for free movement
		if abs(xsp)>0
		{
		//sprite_index = sprTamziPlaceWalk
		//sprite needs to be changed based on character
		}
		else if xsp==0
		{
		//sprite_index = sprTamziPlaceIdle
		//sprite needs to be changed based on character
		}

	break;
	
	
	case PlayerState.STATEHURT:
		
		//move player and store if they are on the ground
		_onGround = scrPlayerMove(xsp, ysp, objSolid);
		
		if _onGround 
		{
			xsp = 0;
		}
		
		stunDuration-=1;
		if stunDuration==0
		{
			stateTransition(PlayerState.STATEFREE);
		}
	break;
	
	
	case PlayerState.STATELEAVE:
	
		var _direction = sign(objLevelEndPathfindLocation.x - x);
		xsp = _direction * maxspeed;
		
		scrPlayerMove(xsp, ysp, objSolid);
	
		if distance_to_object(objLevelEndPathfindLocation) < 20
		{
			room_goto_next();
		}
		
	break;
	
	
	case PlayerState.STATESELECT:
		
		xsp=0;
		scrPlayerMove(xsp, ysp, objSolid);

	break;
}

if xsp != 0 {
	dir=sign(xsp);
	image_xscale = dir;
}

//when falling off of reality
if bbox_top > room_height {
	//TODO: wait a second here
	x = currentGrace.x;
	y = currentGrace.bbox_bottom;
	ysp=0;
	ysp=0;
	global.health-=1;
}
	
	