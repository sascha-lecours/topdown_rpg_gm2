/// @description hurt flash timer
event_inherited();

if (flashWhite && _curFlashTime > 0){
	_curFlashTime -= _myDeltaTime;
} else {
	flashWhite = false	
}

// Move all components so they follow the object
for(var i = 0; i < array_length_1d(myComponents); i += 1){
		var newXposition = x + lengthdir_x(myComponents[i].offsetDistance, myComponents[i].offsetAngle + facingAngle);
		var newYposition = y + lengthdir_y(myComponents[i].offsetDistance, myComponents[i].offsetAngle + facingAngle);
		myComponents[i].instance.x = newXposition;
		myComponents[i].instance.y = newYposition;
}