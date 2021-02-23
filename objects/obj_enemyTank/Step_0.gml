/// @description Traverse toward player and fire if able
event_inherited();

distanceToMove = moveSpeed*_myDeltaTime;
currentIdleTime -= _myDeltaTime;

switch(currentState){
	case states.movingUp:
		image_angle = 90;
		if(currentIdleTime > 0) break;
		updateRealCoordinatesAndTryToMove(0, -distanceToMove);
		if(!place_free(x, y-turnAroundDistanceToCheck)){
				currentState = states.movingDown;
				currentIdleTime = idleTime;
		}
		break;
	case states.movingDown:
		image_angle = 90;
		if(currentIdleTime > 0) break;
		updateRealCoordinatesAndTryToMove(0, distanceToMove);
		if(!place_free(x, y+turnAroundDistanceToCheck)){
				currentState = states.movingUp;
				currentIdleTime = idleTime;
		}
		break;
	case states.movingLeft:
		image_angle = 0;
		if(currentIdleTime > 0) break;
		updateRealCoordinatesAndTryToMove(-distanceToMove, 0);
		if(!place_free(x-turnAroundDistanceToCheck, y)){
				currentState = states.movingRight;
				currentIdleTime = idleTime;
		}
		break;
		
		break;
	case states.movingRight:
		image_angle = 0;
		if(currentIdleTime > 0) break;
		updateRealCoordinatesAndTryToMove(distanceToMove, 0);
		if(!place_free(x+turnAroundDistanceToCheck, y)){
				currentState = states.movingLeft;
				currentIdleTime = idleTime;
		}
		break;
}


// Move turret with self
myTurret.x = x;
myTurret.y = y;