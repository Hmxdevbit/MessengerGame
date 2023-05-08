if place_meeting(x, y, o_block) || place_meeting(x, y, obj_player)
{
	state = 1;	
}
else{
	state = 0;	
}

image_index = state;