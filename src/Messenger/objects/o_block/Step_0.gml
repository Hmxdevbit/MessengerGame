//what state are we in

if(sliding == false){
	//set starting coordinates
	startPointX = x;
	startPointY = y;
	
	//reset movement speed
	xspd = 0;
	yspd = 0;
}

if(sliding == true){
	
	//get the actual 360 degree direction to move in
	var _realDir = faceDir * 90;
	
	//get target coordinate
	var _targetXDist = lengthdir_x(gridSpace, _realDir);
	var _targetYDist = lengthdir_y(gridSpace, _realDir);
	targetX = startPointX + _targetXDist;
	targetY = startPointY + _targetYDist;
	
	//set the speed
	var _targetDist = point_distance(x, y, targetX, targetY);
	var _finalSpd = min(moveSpd, _targetDist);
	xspd = lengthdir_x(_finalSpd,_realDir );
	yspd = lengthdir_y(_finalSpd,_realDir );
}
