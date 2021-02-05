/// @description Initialize
event_inherited();

gunType = gunTypes.rocketLauncher;
bullet1 = obj_playerBullet_rl;
bulletsPerShot = 1;
shotCooldown = 0.75; // Time in seconds 
accuracy = 0.9; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.7;
damageMin = 5;
damageMax = 7;
shotSpeed = 4;
shotLifetime = 0.3;

explosive = true;
explosionDamageMin = 4;
explosionDamageMax = 8;
explosionSize = 1.5;
