/// @description add ondestroy effects -> explode if applicable

// TODO: Add some effects here

if(explosive){
	var myExplosion = instance_create_layer(x, y, "Instances", obj_explosion);
	myExplosion.explosionSize = explosionSize;
	myExplosion.explosionDamage = explosionDamage;
}
