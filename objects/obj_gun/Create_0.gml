/// @description Generic gun "class"
event_inherited();

gunType = gunTypes.machinegun;
bullet1 = null;
shotCooldown = 0.1; // Time in seconds 
accuracy = 0.75; // 1 = perfectly accurate, 0 = 180 degree spread
recoil = 0.5;
recoilReductionRate = 0.2;
damageMin = 1;
damageMax = 1;
shotSpeed = 5;
chargeOnHold = false;

_myShotcooldown = 0;
_myRecoil = 0;
_myOwner = null;


function getDamage(){
	_myDamage = irandom_range(damageMin, damageMax);
	return _myDamage;
}

function tryToShoot(offset_x, offset_y, aimDirection){ 
	if(_myShotcooldown >= 0) return;
	_myShot = instance_create_layer(_myOwner.x+offset_x, _myOwner.y+offset_y,"Instances",bullet1);
	with(_myShot){
		direction = aimDirection; // TODO: Apply accuracy/recoil
		image_angle = direction;
		speed = shotSpeed;
		damage = getDamage();
	}
	_myRecoil += recoil;
	_myShotcooldown = shotCooldown;
}