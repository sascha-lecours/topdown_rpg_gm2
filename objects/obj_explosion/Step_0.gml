/// @description Expand
event_inherited();

if(!shakeAdded){
	obj_gameController.addScreenShake(explosionShake, explosionShake);
	shakeAdded = true;
}

if (_lingering || ((explosionSize - _currentSize) < explosionFudge)){ // fullsize
	_lingering = true;
	_lingerTimer -= _myDeltaTime;
	if(_lingerTimer < 0) instance_destroy();
} else {
	_currentSize = lerp(_currentSize, explosionSize, explosionBlastAcceleration * _myDeltaTime);

	image_xscale = _currentSize;
	image_yscale = _currentSize;
}




