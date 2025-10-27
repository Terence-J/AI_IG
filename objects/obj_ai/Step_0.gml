var rightKey = keyboard_check(vk_right);
var leftKey = keyboard_check(vk_left);
var upKey = keyboard_check(vk_up);
var downKey = keyboard_check(vk_down);

xSpeed = (rightKey - leftKey) * moveSpeed;
ySpeed = (downKey - upKey) * moveSpeed;

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