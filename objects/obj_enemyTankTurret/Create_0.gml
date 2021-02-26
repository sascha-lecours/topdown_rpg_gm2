/// @description Initialize
event_inherited();

name = "Enemy Tank Turret";
maxHp = 1;
setHp(maxHp);
traverseSpeed = 12;
mainGunType = obj_enemyTurretGun;
shootable = false;


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