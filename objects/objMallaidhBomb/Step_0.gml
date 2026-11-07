// Inherit the parent event
event_inherited();

if place_meeting(x,y,collidables)
{
	instance_create_layer(x,y,layer,objPoisonZone)
	instance_destroy()
}
