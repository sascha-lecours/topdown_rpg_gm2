/// @description Step events

event_inherited();

if (flashWhite && _curFlashTime > 0){
	_curFlashTime -= _myDeltaTime;
} else {
	flashWhite = false	
}

image_angle = facingAngle; // TODO: This might have to be gotten rid of
