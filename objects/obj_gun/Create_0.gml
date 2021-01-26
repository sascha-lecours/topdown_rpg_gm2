/// @description Generic gun "class"
event_inherited();

gunType = gunTypes.machinegun;
bullet1 = noone;
shotCooldown = 0.1; // Time in seconds 
accuracy = 0.75; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.5;
recoilReductionRate = 1.6;
damageMin = 1;
damageMax = 1;
shotSpeed = 5;
chargeOnHold = false;
maxOffset = 60; // max # of degrees a shot can be off by

_myShotcooldown = 0;
_myRecoil = 0;
_recoilToDegrees = 2;
myOwner = noone;


function getDamage(){
	_myDamage = irandom_range(damageMin, damageMax);
	return _myDamage;
}

function getInaccuracy(){ // returns an amount, in degrees, to add to a shot. recoil + inaccuracy
	var myInaccuracy=0;
	myInaccuracy = 90 * (1-accuracy); // apply base inaccuracy
	myInaccuracy += _myRecoil * _recoilToDegrees; // apply recoil
	myInaccuracy = irandom_range(0, myInaccuracy); // randomize
	myInaccuracy = min(myInaccuracy, maxOffset);
	myInaccuracy = choose(myInaccuracy, -myInaccuracy); // randomize which side
	return myInaccuracy;
}

function tryToShoot(offset_x, offset_y, aimDirection){
	show_debug_message("trying to shoot. Shot cooldown: " + string(_myShotcooldown));
	if(_myShotcooldown > 0) return;
	_myShot = instance_create_layer(x, y,"Instances", obj_playerBullet_mg);
	with(_myShot){
		direction = aimDirection + other.getInaccuracy();
		image_angle = direction;
		speed = other.shotSpeed;
		damage = other.getDamage();
	}
	_myRecoil += recoilPerShot;
	_myShotcooldown = shotCooldown;
}
