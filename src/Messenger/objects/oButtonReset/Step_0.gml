if(place_meeting(x, y, obj_player) || place_meeting(x, y, o_block)){
	state = 1;
} else{
	state = 0;	
}

if state == 1 {
	
	with(o_block){
		x = xstart;
		y = ystart;
	}
	
}

//show button is pressed
image_index = state;