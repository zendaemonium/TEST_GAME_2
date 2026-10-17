function scrPlayerSpecial(){

if global.characterIndex == 0 // tamzi special call
{
	//nothing
}
else if global.characterIndex == 1 //sekhet special call
{
	//nada
}
else if global.characterIndex == 2 //dayan special call
{
	//zilch
}
else if global.characterIndex == 3 //mallaidh special call
{
	var _aimX=x+35 //not aiming yet, change when implementing aim
	var _aimY=y-35 //not aiming yet, change when implementing aim
	with instance_create_layer(_aimX, _aimY,layer,objMallaidhBomb)
	{
		xsp = objPLAYER.dir*20
		ysp = -10
		yacc = 0.5
	}
}

}