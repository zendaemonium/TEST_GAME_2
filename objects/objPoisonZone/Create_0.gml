image_xscale = 7
image_yscale = 1.5

cloudXPositions = [];

cloudYPositions = [];

cloudImageAlphas = [];

cloudImageIndexes = [];

totalClouds = 10;

width = bbox_right - bbox_left;

duration = 180; //duration is 3 seconds

for(var i=0; i < totalClouds; i++)
{
	createPoisonCloud(i);
}


function createPoisonCloud(_i) {
	var _section = floor(_i/(totalClouds/5));
	var _thisCloudX = random_range(bbox_left+(width/5*_section), 
                                   bbox_left+(width/5*(_section+1)))						   
	cloudXPositions[_i] = _thisCloudX;
	
	var _thisCloudY = random_range(bbox_top, bbox_bottom);
	cloudYPositions[_i] = _thisCloudY;
	
	var _thisCloudAlpha = random_range(0.2, 0.6);
	cloudImageAlphas[_i] = _thisCloudAlpha;
	
	var _thisCloudIndex = random_range(0,3);
	cloudImageIndexes[_i] = _thisCloudIndex;
}