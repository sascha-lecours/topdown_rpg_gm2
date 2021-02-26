/// @description Initialize
event_inherited();

gunType = gunTypes.railGun;
bullet1 = obj_playerBullet_rg;
bulletsPerShot = 1;
shotCooldown = 0.75; // Time in seconds 
accuracy = 0.95; // 1 = perfectly accurate, 0 = 180 degree spread
recoilPerShot = 0.3;
damageMin = 40;
damageMax = 45;
shotSpeed = 15;
shotLifetime = 1;
piercing = true;
