view_enabled = true;
view_visible[0] = true;
following = objPLAYER;

cameraW = 640;
cameraH = 380;

view_camera[0] = camera_create_view(0, 0,cameraW,  cameraH, 0, following, -1, -1, 0, 0);