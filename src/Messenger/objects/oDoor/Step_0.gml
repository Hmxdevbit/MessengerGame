if instance_exists(buttonObject){
	state = buttonObject.state;
}

//closed
if state == 0
{
	mask_index = sNocollision;
}

//open
if state == 1
{
	mask_index = sprite_index;
}

image_index = state;