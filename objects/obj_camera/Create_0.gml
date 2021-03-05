/// @description Initialize
view_width = 1920/2;
view_height = 1080/2;

window_scale=1;

followRate = 2.4;

xShakeOffset = 0;
yShakeOffset = 0;

// TODO: Make this a singleton?

window_set_size(view_width*window_scale, view_height*window_scale);
alarm[0]=1;

surface_resize(application_surface, view_width*window_scale, view_height*window_scale);

function setShake(_xShake, _yShake){
	xShakeOffset = max(0, _xShake);
	yShakeOffset = max(0, _yShake);
}