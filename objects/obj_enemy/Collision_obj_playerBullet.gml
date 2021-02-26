/// @description Interact with bullet that hit
if(shootable){
	takeDamage(other.damage);
	if(!other.piercing) instance_destroy(other);
}