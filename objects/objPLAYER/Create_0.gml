window_set_size(1280, 720);
xsp=0;
ysp=0;
inControl=true
stunDuration=60
dir=1
maxspeed=6
jumpspeed=-6
grav=0.2
currentGrace=noone

defaultMask = mask_index;
//states

enum Player_State{
	STATEFREE,
	STATEATTACK,
	STATEHURT,
	STATEDEATH,
	STATECUTSCENE,
	STATECLIMB,
	STATEDANCE,

}

state=Player_State.STATEFREE;
instance_create_layer(0, 0,layer, objHitboxCrook);

//this function is used to transition to a new state :D

function stateTransition(_stateTo){

	switch(_stateTo){
		case Player_State.STATEFREE:
		
		inControl=true
		
		break;
		case Player_State.STATEHURT:
		
		xsp=0;
		ysp=0;
		inControl=false
		stunDuration=60
	
		break;	
	}
	
state=_stateTo
	return	1;
}