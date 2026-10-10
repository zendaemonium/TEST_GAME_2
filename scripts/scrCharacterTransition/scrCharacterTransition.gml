
/// @function		characterTransition()
/// @description	change player variables to fit global.characterIndex

function characterTransition()
{
	if global.characterIndex = 0
		{
			sprite_index = sprTamziPlaceIdle;
			global.maxHealth = 3
		}
		else if global.characterIndex = 1 
		{
			sprite_index = sprSekhetPlace;
			global.maxHealth = 3
		}
		else if global.characterIndex = 2 
		{
			sprite_index = sprDayanPlace;
			global.maxHealth = 4
		}
		else if global.characterIndex = 3 
		{
			sprite_index = sprMallaidhPlace;
			global.maxHealth = 2
		}
		global.health = global.maxHealth
	}