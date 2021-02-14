/// @description Traverse toward player and fire if able
event_inherited();


_target = getPlayer();

traverseTowardTarget(_target, traverseSpeed);

mainGun.tryToShoot(facingAngle);