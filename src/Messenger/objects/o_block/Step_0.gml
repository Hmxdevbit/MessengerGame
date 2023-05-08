//slide in ran direction test
/*
if(keyboard_check_pressed(vk_space)){
	faceDir = choose(LEFT, RIGHT, UP, DOWN);
	sliding = true;
}*/


//what state are we in

if(sliding == false){
	//set starting coordinates
	startPointX = x;
	startPointY = y;
	
	//reset movement speed
	xspd = 0;
	yspd = 0;
}


//get ground type
	//in recessed space
	if(place_meeting(x, y, oPushBlockArea)){
		pushBlockArea = true;	
	}
	else{
		pushBlockArea = false;	
	}

	//on ice
	if place_meeting(x, y, oIceGround){
		onIce = true;
	}
	else
		onIce = false;

//sliding
if(sliding == true){
	
	//get the actual 360 degree direction to move in
	var _realDir = faceDir * 90;
	
	//get target coordinate
	var _targetXDist = lengthdir_x(gridSpace, _realDir);
	var _targetYDist = lengthdir_y(gridSpace, _realDir);
	targetX = startPointX + _targetXDist;
	targetY = startPointY + _targetYDist;
	
	//if on ice-keep adding onto coord until edge or wall
	if (onIce == true){
		//reset targeet x and y	
		targetX = startPointX;
		targetY = startPointY;
		
		//search space ahead to make sure therre is ice and there is no wall
		while place_meeting(targetX + _targetXDist, targetY + _targetYDist, oIceGround)
		&& !place_meeting(targetX + _targetXDist, targetY + _targetYDist, obj_wall)
		{
			targetX += _targetXDist;
			targetY += _targetYDist;
		}
	}
	
	//set the speed
	var _targetDist = point_distance(x, y, targetX, targetY);
	var _finalSpd = min(moveSpd, _targetDist);
	xspd = lengthdir_x(_finalSpd,_realDir );
	yspd = lengthdir_y(_finalSpd,_realDir );
	
	//in recessed space cancel movement
	if pushBlockArea == true && !place_meeting(targetX, targetY, oPushBlockArea)
	{
		xspd = 0;
		yspd = 0;
	}
	
	
	//dont let the block move to a grid space that has a wall in it
	if(place_meeting(targetX, targetY, obj_wall)){
		
		xspd = 0;
		yspd = 0;
	
	}
}

//move

x += xspd;
y += yspd;

//done with sliding
if(xspd == 0 && yspd == 0){
		sliding = false;
}


depth = -bbox_bottom







