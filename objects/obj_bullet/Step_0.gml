/// @description decrease lifespan
event_inherited();

lifetime -= _myDeltaTime;
if(lifetime < 0){
	instance_destroy();
}
