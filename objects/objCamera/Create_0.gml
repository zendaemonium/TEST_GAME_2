view_enabled = true;
view_visible[0] = true;
following = objPLAYER;

cameraW = 1280;
cameraH = 720;

view_camera[0] = camera_create_view(0, 0,cameraW,  cameraH, 0, following, -1, -1, 0, 0);

parallax1LayerID = layer_get_id("Parallax_1");
parallax1StartingX = layer_get_x("Parallax_1");
parallax1StartingY = layer_get_y("Parallax_1");

parallax2LayerID = layer_get_id("Parallax_2");
parallax2StartingX = layer_get_x("Parallax_2");
parallax2StartingY = layer_get_y("Parallax_2");

backgroundLayerID = layer_get_id("Background");
backgroundStartingX = layer_get_x("Background");
backgroundStartingY = layer_get_y("Background");