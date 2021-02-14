/// @description Initialize
event_inherited();

name = "Stationary enemy turret";
maxHp = 20;
setHp(maxHp);
traverseSpeed = 10;
mainGunType = obj_enemyTurretGun;


_target = noone;

mainGun = instantiateComponent(mainGunType);
attachComponent(mainGun);