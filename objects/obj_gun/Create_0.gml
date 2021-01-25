/// @description Generic gun "class"
event_inherited();

gunType = gunTypes.machinegun;
bullet1 = noone;
shotCooldown = 0.1; // Time in seconds 
accuracy = 0.75; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.5;
recoilReductionRate = 0.2;
damageMin = 1;
damageMax = 1;
shotSpeed = 5;
chargeOnHold = false;

_myShotcooldown = 0;
_myRecoil = 0;
myOwner = noone;


function getDamage(){
	_myDamage = irandom_range(damageMin, damageMax);
	return _myDamage;
}

function tryToShoot(offset_x, offset_y, aimDirection){
	show_debug_message("trying to shoot. Shot cooldown: " + string(_myShotcooldown));
	if(_myShotcooldown > 0) return;
	_myShot = instance_create_layer(x, y,"Instances", obj_playerBullet_mg);
	with(_myShot){
		direction = aimDirection; // TODO: Apply accuracy/recoil
		image_angle = direction;
		speed = other.shotSpeed;
		damage = other.getDamage();
	}
	_myRecoil += recoilPerShot;
	_myShotcooldown = shotCooldown;
}
