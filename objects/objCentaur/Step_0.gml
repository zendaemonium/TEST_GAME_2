// Inherit the parent event
event_inherited()

dir=playerDirection

image_xscale = dir;

var playerAngle = point_direction(x,y,objPLAYER.x,objPLAYER.y);

if dir = 1
{
	topHalfDir = playerAngle
}
else 
{
	topHalfDir = playerAngle+180
}

if timer >0
{
	timer -=1
}
if timer <=0 and lineOfSight(objPLAYER,xTopHalf, yTopHalf) == true
{
		//create an arrow
		var _arrow = instance_create_layer(xTopHalf-20,yTopHalf-10,layer,objArrow);
		
		var _speed = 20
		var _arrowXspeed = lengthdir_x(_speed, playerAngle)
		var _arrowYspeed = lengthdir_y(_speed, playerAngle)
		// TO DO: ingluence angle based off of prediction for movement
		
		_arrow.xsp = _arrowXspeed
		_arrow.ysp = _arrowYspeed
		_arrow.yacc = 0.1;
		
		
		timer=reloadTime
}