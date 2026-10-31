event_inherited()

xTopHalf = x+50*dir
yTopHalf = y-100

if global.developerModeActive
{
	var _canSeePlayer = LineOfSight(objPLAYER);
	draw_text(x+200, y-100,"can see player = " + string(_canSeePlayer))
}

draw_sprite_ext(sprCentaurTopPlace,0,xTopHalf,yTopHalf,image_xscale,1,topHalfDir,c_white,1)