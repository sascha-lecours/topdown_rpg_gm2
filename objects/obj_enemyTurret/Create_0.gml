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

mainGun = instantiateComponent(mainGunType);
attachComponent(mainGun);

secondaryGun = instantiateComponent(secondaryGunType);
attachComponent(secondaryGun);

secondaryGun.addCoolDownTime(offsetTime);