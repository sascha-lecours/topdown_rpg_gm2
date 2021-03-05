/// @description Initialize

// TODO: Make this a singleton
deltaTimeConstant = global.delta_time_constant;
player = noone;

camera = instance_create_layer(0,0,"Instances",obj_camera);

// Screenshake
currentShake_X = 0;
currentShake_Y = 0;
shakeDecayFactor = 5;

function addScreenShake(_xShake, _yShake){
	currentShake_X += _xShake;
	currentShake_Y += _yShake;
}