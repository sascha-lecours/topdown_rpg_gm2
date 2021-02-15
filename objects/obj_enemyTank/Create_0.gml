/// @description Initialize, create turret
event_inherited();

name = "Enemy Tank Body";
maxHp = 25;
setHp(maxHp);
moveSpeed = 10;

myTurret = instance_create_layer(x, y, "Enemy_turrets", obj_enemyTankTurret);


_target = noone;

currentState = states.movingUp;
previousState = states.stopped;

enum states {
	movingUp,
	movingDown,
	movingLeft,
	movingRight,
	stopped
}