// Inherit the parent event
event_inherited()

var xTopHalf = x-50
var yTopHalf = y-100

timer -=1
if timer <=0
{
		//create an arrow
		var _arrow = instance_create_layer(xTopHalf-20,yTopHalf-10,layer,objArrow);
		_arrow.xsp = playerDirection*20
		_arrow.ysp = -1
		_arrow.yacc = 0.1;
		timer=reloadTime
}