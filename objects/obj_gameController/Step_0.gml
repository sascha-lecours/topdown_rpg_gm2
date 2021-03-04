_myDeltaTime = obj_gameController.efficientDeltaTime;
/// @description Step events
keyRestart = keyboard_check(ord("R"));
keyQuit = keyboard_check(vk_escape);

if(keyQuit) game_end();
if(keyRestart) room_restart();

// Screenshake

currentShake -= _myDeltaTime;

