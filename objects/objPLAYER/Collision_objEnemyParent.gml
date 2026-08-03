if state!=(Player_State.STATEHURT){
	stateTransition(Player_State.STATEHURT)
	
	var _enemyDirection = sign(other.x-x);
	xsp=-3*_enemyDirection
	ysp=-1.5

	}