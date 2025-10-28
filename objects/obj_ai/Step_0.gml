
//Handle wall collisions
if place_meeting(x + xSpeed, y, obj_wall) || place_meeting(x + xSpeed, y, obj_ai) == true
	{
		xSpeed = 0;
	}
if place_meeting(x, y + ySpeed, obj_wall) || place_meeting(x, y + ySpeed, obj_ai) == true
	{
		ySpeed = 0;
	}
//Movement
x += xSpeed;
y += ySpeed;


//Behaviour tree
var currentState = Behaviour.Idle;

if (distance_to_object(obj_prey) <= huntZoneDistance){
	currentState = Behaviour.Hunt;
}
else if (distance_to_object(obj_hunter) <= fleeZoneDistance){
	currentState = Behaviour.Flee;
}

switch (currentState){
	case Behaviour.Idle:
		break;
	case Behaviour.Wander:
		break;
	case Behaviour.Flee:
		mp_linear_step(obj_hunter.x, obj_hunter.y, -moveSpeed, 1);
		break;
	case Behaviour.Hunt:
		mp_linear_step(obj_prey.x, obj_prey.y, moveSpeed / 2, 1);
		break;
}