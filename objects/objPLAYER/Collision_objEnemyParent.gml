if state!=(PlayerState.STATEHURT){
	stateTransition(PlayerState.STATEHURT);
	
	var _enemyDirection = sign(other.x-x);
	xsp=-5*_enemyDirection
	ysp=-4;
	
	global.health-=1;

}