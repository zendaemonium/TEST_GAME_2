var _newX = objPLAYER.x - (cameraW/2)
var _newY = objPLAYER.y - (cameraH/2)

x = _newX;
y = _newY;

camera_set_view_pos(view_camera[0], _newX, _newY);