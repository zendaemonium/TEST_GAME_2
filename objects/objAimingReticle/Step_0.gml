if objPLAYER.state == PlayerState.STATEAIM{

	if keyboard_check(vk_left) or keyboard_check(vk_up){
		angle +=3
	}
	if keyboard_check(vk_right) or keyboard_check(vk_down){
		angle -=3
	}
	if angle >= 360{
		angle = 0
	}
	if angle < 0{
		angle = 360
	}
	
	if angle > 90 and angle < 270 
	{
		dir = -1
		objPLAYER.dir = -1
		
	} else if angle < 90 or angle > 270 
	{
		dir = 1
		objPLAYER.dir = 1
	}

if global.characterIndex == 1
{
	yOffset=-70;
}
else if global.characterIndex == 3
{
	yOffset=-40;
}

x = objPLAYER.x + lengthdir_x(radius, angle);
y = objPLAYER.y + yOffset + lengthdir_y(radius, angle);




//IF NOT AIMING, FLIP RETICLE FOR NEXT AIM 
} 
else if dir != objPLAYER.dir 
{
	dir = objPLAYER.dir;
	angle = 180 - angle;
	if angle > 360 
	{
		angle -= 360;	
	} 
	else if angle < 0 
	{
		angle += 360;	
	}
}