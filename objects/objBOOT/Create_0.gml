window_set_size(1280, 720);
display_set_gui_size(1920,1080);

global.characterIndex = 0;

global.maxHealth = 3;
global.health = global.maxHealth; //fill health to max

global.stamina = 100;


global.developerControls = instance_create_layer(0,0,layer,objDeveloperControls);