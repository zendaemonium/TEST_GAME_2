var _instance = instance_create_layer(0,0,layer,objTextbox);

with (_instance) 
{
	text = "[c_yellow]your did it!";
}

//destroy trigger after textbox is created
instance_destroy();