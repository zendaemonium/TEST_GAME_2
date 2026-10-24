function scrPlayerSpecial(){

if global.characterIndex == 0 // tamzi special call
{
	//nothing
}
else if global.characterIndex == 1 //sekhet special call
{
	objPLAYER.state = PlayerState.STATEAIM;
}
else if global.characterIndex == 2 //dayan special call
{
	//zilch
}
else if global.characterIndex == 3 //mallaidh special call
{	
	objPLAYER.state = PlayerState.STATEAIM;
}

}