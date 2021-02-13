/// @description Initialize
event_inherited();

gunType = gunTypes.enemyGuns;
bullet1 = obj_enemyBullet_1;

bulletsPerShot = 1;
shotCooldown = 1.1; // Time in seconds 
accuracy = 0.90; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.5;
recoilReductionRate = 1.6;
damageMin = 1;
damageMax = 1;
shotSpeed = 3;
shotLifetime = 12;
maxOffset = 60; // max # of degrees a shot can be off by

explosive = false;
explosionSize = 0;
explosionDamageMin = 1;
explosionDamageMax = 1;
