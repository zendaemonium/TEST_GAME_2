image_xscale = 7
image_yscale = 1.5

cloudImageAlpha= 0.6

cloudImageIndex = 0;

cloudXPositions = [];

cloudYPositions = [];

var _width = bbox_right - bbox_left

for(var i=0; i < 5; i++)

{
	var _thisCloudX = random_range(bbox_left+(_width/5*i), 
                                   bbox_left+(_width/5*(i+1)))
								   
	array_push(cloudXPositions, _thisCloudX)
	
	var _thisCloudY = random_range(bbox_top, bbox_bottom);
	array_push(cloudYPositions, _thisCloudY)
}

