/// @description Generic gun "class"
event_inherited();

gunType = gunTypes.machineGun;
bullet1 = noone;
bulletsPerShot = 1;
shotCooldown = 0.1; // Time in seconds 
accuracy = 0.75; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.5;
recoilReductionRate = 1.6;
damageMin = 1;
damageMax = 1;
shotSpeed = 6;
shotLifetime = 5;
maxOffset = 60; // max # of degrees a shot can be off by

explosive = false;
explosionSize = 0;
explosionDamageMin = 1;
explosionDamageMax = 1;

_myShotcooldown = 0;
_myRecoil = 0;
_recoilToDegrees = 2;
myOwner = noone;
myBulletLayer = "Bullets_enemies";

function attach(){
	myBulletLayer = myOwner.myBulletLayer;
}

function getDamage(){
	var myDamage = irandom_range(damageMin, damageMax);
	return myDamage;
}

function getExplosionDamage(){
	var myExplosionDamage = irandom_range(explosionDamageMin, explosionDamageMax);
	return myExplosionDamage;
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

function tryToShoot(aimDirection){
	if(_myShotcooldown > 0) return;
	
	for(i=0;i<bulletsPerShot;i+=1) {
		var myShot = instance_create_layer(x, y, myBulletLayer, bullet1);

		myShot.direction = aimDirection + getInaccuracy();
		myShot.image_angle = myShot.direction;
		myShot.speed = shotSpeed;
		myShot.damage = getDamage();
		myShot.lifetime = shotLifetime;
		
		if(explosive){
			myShot.explosive = true;
			myShot.explosionSize = explosionSize;
			myShot.explosionDamage = getExplosionDamage();
		}

	}
	_myRecoil += recoilPerShot;
	_myShotcooldown = shotCooldown;
}
