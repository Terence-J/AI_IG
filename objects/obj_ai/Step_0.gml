if place_meeting(x + xSpeed, y, obj_wall) || place_meeting(x + xSpeed, y, obj_ai) == true
	{
		xSpeed = 0;
	}
if place_meeting(x, y + ySpeed, obj_wall) || place_meeting(x, y + ySpeed, obj_ai) == true
	{
		ySpeed = 0;
	}

x += xSpeed;
y += ySpeed;