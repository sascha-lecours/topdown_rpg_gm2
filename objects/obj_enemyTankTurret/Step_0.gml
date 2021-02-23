/// @description Traverse toward player and fire if able
event_inherited();

mainGun.x = x;
mainGun.y = y;


_target = getPlayer();

traverseTowardTarget(_target, traverseSpeed);

mainGun.tryToShoot(facingAngle);