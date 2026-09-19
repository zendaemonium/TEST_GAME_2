var _newX = objPLAYER.x - (cameraW/2)
var _newY = objPLAYER.y - (cameraH*(2/3)) //player y is 1/3 from bottom of the screen

_newX=clamp(_newX, 0, room_width-cameraW); //constrain camera X position to room width
_newY=clamp(_newY, 0, room_height-cameraH); //constrain camera Y position to room height

x = _newX; //move camera x
y = _newY; //move camera y


camera_set_view_pos(view_camera[0], x, y); //set camera position



#region Parallax

// PARALLAX 1 ====================================================================================
var _percentage = 0//this is the percentage of the camera speed for layer 1 :D

var _parallax1X = (x * _percentage) + parallax1StartingX;
var _parallax1Y = (y * _percentage) + parallax1StartingY;

//set parallax 1 position
layer_x(parallax1LayerID,_parallax1X);
layer_y(parallax1LayerID,_parallax1Y);


// PARALLAX 2 ====================================================================================
_percentage = 0.75 //this is the percentage of the camera speed for layer 2 :D

var _parallax2X = (x * _percentage) + parallax2StartingX;
var _parallax2Y = (y * _percentage) + parallax2StartingY;

//set parallax 2 position
layer_x(parallax2LayerID,_parallax2X);
layer_y(parallax2LayerID,_parallax2Y);


// BACKGROUND ====================================================================================
//background snaps to camera
layer_x(backgroundLayerID,x+backgroundStartingX);
layer_y(backgroundLayerID,y+backgroundStartingY); 

#endregion