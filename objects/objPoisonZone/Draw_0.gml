if global.developerModeActive
{
	image_alpha = 0.3
	draw_self()
}

	cloudImageIndex += 1/6;
	if cloudImageIndex >= 3 
	{
		cloudImageIndex = 0
	}

for(var i=0; i < 5; i++)

{
	draw_sprite_ext(sprPoisonSmoke,cloudImageIndex, cloudXPositions[i], cloudYPositions[i], 4, 4, 0, c_white, cloudImageAlpha)
}
cloudImageAlpha -= 0.01