if state!=(Player_State.STATEHURT){
	stateTransition(Player_State.STATEHURT)
	
	var _enemyDirection = sign(other.x-x);
	xsp=-4*_enemyDirection
	ysp=-2

	}