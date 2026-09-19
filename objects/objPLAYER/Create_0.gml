
xsp=0;
ysp=0;
inControl=true;
stunDuration=60;
dir=1;
maxspeed=6;
jumpspeed=-7;
grav=0.2;
currentGrace=noone;

defaultMask = mask_index;

//Player states
enum PlayerState
{
	STATEFREE,
	STATEATTACK,
	STATEHURT,
	STATEDEATH,
	STATECUTSCENE,
	STATECLIMB,
	STATEDANCE,
	STATELEAVE,
	STATESELECT,

}

state=PlayerState.STATEFREE;
instance_create_layer(0, 0,layer, objHitboxCrook);



/// @function		stateTransition(_stateTo)
/// @description	this function is used to transition to a new state :D
/// @param {Enum.PlayerState}	_stateTo The integer index state to transition to
function stateTransition(_stateTo)
{
	var _stateFrom = state; //previous state
	
	//state specific variable changes
	switch(_stateTo){
		case PlayerState.STATEFREE:
			inControl=true
		break;
		
		case PlayerState.STATEHURT:
			xsp=0;
			ysp=0;
			inControl=false;
			stunDuration=60;
		break;	
	}
	//switch state variable to new state
	state=_stateTo;
	return	1;
}

/// @function		characterTransition()
/// @description	change player variables to fit global.characterIndex
function characterTransition(){
	if global.characterIndex = 0 
	{
		sprite_index = sprTamziPlaceIdle;
	}
	else if global.characterIndex = 1 
	{
		sprite_index = sprSekhetPlace;
	}
	else if global.characterIndex = 2 
	{
		sprite_index = sprDayanPlace;
	}
	else if global.characterIndex = 3 
	{
		sprite_index = sprMallaidhPlace;
	}
}

characterTransition(); //transition to correct character upon spawn