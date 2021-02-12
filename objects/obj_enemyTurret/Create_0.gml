/// @description Initialize
event_inherited();

name = "Stationary enemy turret";
maxHP = 10;
traverseSpeed = 10;
mainGunType = obj_enemyTurretGun;


_target = noone;
_currentHP = maxHP;

mainGun = instantiateComponent(mainGunType);
attachComponent(mainGun);