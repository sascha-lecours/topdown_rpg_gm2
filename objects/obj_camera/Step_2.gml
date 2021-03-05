/// @description Position camera after all movement is done
_myDeltaTime = obj_gameController.efficientDeltaTime;
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if(instance_exists(obj_player))
{
	var _x = obj_player.x-view_width/2;
	var _y = obj_player.y-view_height/2;
	
	_x = clamp(_x, 0, room_width-view_width);
	_y = clamp(_y, 0, room_height-view_height);

	// Apply screenshake
	_x += random_range(-xShakeOffset, xShakeOffset);
	_y += random_range(-yShakeOffset, yShakeOffset);

	var _cur_x = camera_get_view_x(view);
	var _cur_y = camera_get_view_y(view);
	
	
	camera_set_view_pos(view, lerp(_cur_x, _x, followRate*_myDeltaTime), lerp(_cur_y, _y, followRate*_myDeltaTime));
	
}



// TODO: Make camera center on midpoint (?) between player and crosshair