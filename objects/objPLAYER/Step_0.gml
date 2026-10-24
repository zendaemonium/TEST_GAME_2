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
		_onGround = scrPlayerMove(xsp, ysp, collidables);
		
		//if on the ground, player can jump
		if _onGround and keyboard_check(vk_up)
		{
			ysp=jumpspeed;
		}
		
		if keyboard_check_pressed(ord("Z")) // attack!
		{
			with (objHitboxMelee)
			{
				active = true;
				activeFrames = ATTACKDURATION;
			}
		}
		
		if keyboard_check_pressed(ord("C")) // special!
		{
			scrPlayerSpecial();
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
		_onGround = scrPlayerMove(xsp, ysp, collidables);
		
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
		
		scrPlayerMove(xsp, ysp, collidables);
	
		if distance_to_object(objLevelEndPathfindLocation) < 20
		{
			room_goto_next();
		}
		
	break;
	
	
	case PlayerState.STATESELECT:
		
		xsp=0;
		scrPlayerMove(xsp, ysp, collidables);

	break;
	
	case PlayerState.STATEAIM:
		//movement TO DO; add physics to aiming player
		xsp=lerp(xsp,0,0.1)
		
		//launch projectile
		if keyboard_check_released(ord("C")){
			var _projectileX = x
			var _projectileY = objAimingReticle.yOffset + y;
			var _speed = 15;
			var _xSpeed = lengthdir_x(_speed, objAimingReticle.angle)
			var _ySpeed = lengthdir_y(_speed, objAimingReticle.angle)
			
			with instance_create_layer(_projectileX, _projectileY,layer,objMallaidhBomb)
			{
				xsp = _xSpeed
				ysp = _ySpeed
				yacc = 0.3
			}
			stateTransition(PlayerState.STATEFREE);
		}
		
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
	
	