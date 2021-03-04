/// @description Initialize

// TODO: Make this a singleton
deltaTimeConstant = global.delta_time_constant;
player = noone;

camera = instance_create_layer(0,0,"Instances",obj_camera);

// Screenshake
currentShake = 0;