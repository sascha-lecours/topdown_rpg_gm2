/// @description Check to see if should flash white

if(flashWhite){
	shader_set(shd_white_sprite);	
}
draw_self();
shader_reset();