window_set_size(1280, 720);
xsp=0;
ysp=0;
inControl=true
stunDuration=60
dir=1

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