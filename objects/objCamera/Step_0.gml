var _newX = objPLAYER.x - (cameraW/2)
var _newY = objPLAYER.y - (cameraH/2)

_newX=clamp(_newX, 0, room_width-cameraW)
_newY=clamp(_newY, 0, room_height-cameraH)
x = _newX;
y = _newY;

camera_set_view_pos(view_camera[0], _newX, _newY);

var _parallax1X = (x * 0) + parallax1StartingX
layer_x(parallax1LayerID,_parallax1X);

var _percentage = 0.75 //this is the percentage of the camera speed for layer 2 :D

var _parallax2X = (x * _percentage) + parallax2StartingX
layer_x(parallax2LayerID,_parallax2X);

layer_x(backgroundLayerID,x+backgroundStartingX) 