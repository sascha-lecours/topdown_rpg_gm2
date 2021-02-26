/// @description Initialize
event_inherited();

name = "Stationary enemy turret";
maxHp = 100;
setHp(maxHp);
traverseSpeed = 10;
mainGunType = obj_enemyTurretGun;
secondaryGunType = obj_enemyTurretGun;
offsetTime = 0.1;


_target = noone;


mainGunComponent = {
	componentObject : mainGunType, 
	offsetDistance : 10,
	offsetAngle : 0,
	instance : noone
}

instantiateComponent(mainGunComponent);
attachComponent(mainGunComponent);

mainGun = mainGunComponent.instance;

secondaryGunComponent = {
	componentObject : secondaryGunType, 
	offsetDistance : 10,
	offsetAngle : 0,
	instance : noone
}

instantiateComponent(secondaryGunComponent);
attachComponent(secondaryGunComponent);

secondaryGun =secondaryGunComponent.instance;

secondaryGun.addCoolDownTime(offsetTime);