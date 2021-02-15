/// @description Initialize
event_inherited();

name = "Enemy Tank Turret";
maxHp = 1;
setHp(maxHp);
traverseSpeed = 12;
mainGunType = obj_enemyTurretGun;
shootable = false;


_target = noone;

mainGun = instantiateComponent(mainGunType);
attachComponent(mainGun);