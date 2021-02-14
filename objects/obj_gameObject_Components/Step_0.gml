/// @description hurt flash timer
event_inherited();

if (flashWhite && _curFlashTime > 0){
	_curFlashTime -= _myDeltaTime;
} else {
	flashWhite = false	
}
