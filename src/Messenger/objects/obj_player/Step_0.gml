//get inputs
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
accept_key = keyboard_check(vk_enter);
interactKeyPressed = keyboard_check_pressed(vk_space);

//interact with the push block
if(interactKeyPressed == true){
	//find the 360 degree direction to check for push blocks
	var _checkDir = face * 90;
	
	//see if we find a push block
	var _checkX = x + lengthdir_x(interactDist, _checkDir);
	var _checkY = y + lengthdir_y(interactDist, _checkDir);
	var _pushBlockInst = instance_place(_checkX, _checkY, o_block);
	
	//if there is a push block, tell it to slide and in wht direction
	if(instance_exists(_pushBlockInst) && _pushBlockInst.sliding == false){
		_pushBlockInst.sliding = true;
		_pushBlockInst.faceDir = face;
	}
}




//get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


//set sprite
mask_index = sprite[DOWN];
if(yspd == 0){
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
}



if(xspd == 0){
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
}
sprite_index = sprite[face];



//collisions
if(place_meeting(x + xspd, y, obj_wall) == true)
{
	xspd = 0;	
}

if(place_meeting(x, y + yspd, obj_wall) == true)
{
	yspd = 0;	
}

//move the player
x += xspd;
y += yspd;



if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

if yspd > 0 && face == UP {face = DOWN};
if(yspd < 0 && face == DOWN){
		face = UP
	
}



//animate
if xspd == 0 && yspd == 0
{
	image_index = 0;
	
}

depth = -y;







