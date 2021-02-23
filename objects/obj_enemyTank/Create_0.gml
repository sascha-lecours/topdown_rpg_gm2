/// @description Initialize, create turret
event_inherited();

name = "Enemy Tank Body";
maxHp = 25;
setHp(maxHp);
moveSpeed = 20;

myTurret = instance_create_layer(x, y, "Enemy_turrets", obj_enemyTankTurret);
idleTime = 0.5;
turnAroundDistanceToCheck = 2;

_target = noone;

currentState = states.movingUp;
currentIdleTime = 0;

enum states {
	movingUp,
	movingDown,
	movingLeft,
	movingRight,
}