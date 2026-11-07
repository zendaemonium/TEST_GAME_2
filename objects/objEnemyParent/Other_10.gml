/// @description take damage


if immuneFrames == 0
{
	hp -= damageTaken
	immuneFrames = immuneFrameMax
	if hp <= 0 
	{
		 instance_destroy() //die instantly, may want to replace later
	}
}

// stumble