// set global delta time constant to make it easier to work with in seconds
global.delta_time_constant = (1000000/game_get_speed(gamespeed_fps));


enum gunTypes {
	machinegun,
	railgun,
	shotgun,
	rocketLauncher
}


room_goto_next();