/// @description Draw UI items

if(instance_exists(obj_player)){
	player = instance_find(obj_player, 1);
}

if(player != noone) draw_text(30, 30, string(player.curHp));

