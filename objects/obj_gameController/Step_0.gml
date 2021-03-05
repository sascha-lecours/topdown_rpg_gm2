_myDeltaTime = efficientDeltaTime;
/// @description Step events
keyRestart = keyboard_check(ord("R"));
keyQuit = keyboard_check(vk_escape);

if(keyQuit) game_end();
if(keyRestart) room_restart();

// Screenshake

if(currentShake_X > 0 || currentShake_Y > 0){
	camera.setShake(currentShake_X, currentShake_Y);
	currentShake_X = lerp(currentShake_X, 0, shakeDecayFactor*_myDeltaTime);
	currentShake_Y = lerp(currentShake_Y, 0, shakeDecayFactor*_myDeltaTime);
}


