if global.developerModeActive
{
	image_alpha = 0.3
	draw_self()
}


for(var i=0; i < 5; i++)
{
	draw_sprite_ext(sprPoisonSmoke,cloudImageIndexes[i], cloudXPositions[i], cloudYPositions[i], 4, 4, 0, c_white, cloudImageAlphas[i])
	
	cloudImageAlphas[i]  -= 0.005;
	//if alpha is 0, make new cloud
	if cloudImageAlphas[i] <= 0 and duration > 0 
	{
		createPoisonCloud(i);
	}
	//lower y position for this index (cloud moves up)
	cloudYPositions[i] -= 1;
	
	//loop animation for this index
	cloudImageIndexes[i] += 1/6;
	if cloudImageIndexes[i] >= 3 
	{
		cloudImageIndexes[i] = 0
	}
}


duration -= 1;
if duration <= 0 
{
	
	var _delete = true;
	
	//make all clouds fade
	for(var i=0; i < 5; i++)
	{
		cloudImageAlphas[i]  -= 0.01;
		if cloudImageAlphas[i] > 0 {
			//if one cloud has alpha greater than 0, not ready to delete
			_delete = false;
		}
	}
	
	//delete once all alphas have hit 0
	if _delete == true{
		instance_destroy();
	}
} 
