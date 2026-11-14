function scrPlayerSpecial(){

if global.characterIndex == 0 // tamzi special call
{
	with objPLAYER
	{
		stateTransition(PlayerState.STATETAMSLAM)	
	}
}
else if global.characterIndex == 1 //sekhet special call
{
	with objPLAYER
	{
		stateTransition(PlayerState.STATEAIM)	
	}
}
else if global.characterIndex == 2 //dayan special call
{
	//zilch
}
else if global.characterIndex == 3 //mallaidh special call
{	
	if (instance_number(objMallaidhBomb) + instance_number(objPoisonZone)) < 2
	{
		with objPLAYER
		{
			stateTransition(PlayerState.STATEAIM)	
		}
	}
}

}