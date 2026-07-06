var _instance = instance_create_layer(0,0,layer,objTextbox);

with (_instance) {
	text = "This [c_blue]text [c_white]was triggered by a [c_purple]trigger!"
}

//destroy trigger after textbox is created
instance_destroy();