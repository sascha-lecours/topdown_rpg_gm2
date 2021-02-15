/// @description Traverse toward player and fire if able
event_inherited();

distanceToMove = moveSpeed*_myDeltaTime;

switch(currentState){
	case states.movingUp:
	// TODO: Fill in these actions
		break;
	case states.movingDown:
		break;
	case states.movingLeft:
		break;
	case states.movingRight:
		break;
	case states.stopped:
		break;
}


// Move turret with self
myTurret.x = x;
myTurret.y = y;