/// @description Initialize
event_inherited();

name = "Uninitialized Enemy";
maxHP = 1;
myBulletLayer = "Bullets_enemies";
myMainGun = obj_enemyTurretGun;

_currentHP = maxHP;

function getPlayer(){
	if(instance_exists(obj_player)) {
		return obj_player;
	} else {
		return obj_gameController; // Return this as a safety. Lazy but effective!
	}
}

function traverseTowardTarget(myTarget, traverseSpeed){
	var targetDirection = point_direction(x, y, myTarget.x, myTarget.y);
	var traverseDirection = angle_difference(image_angle, targetDirection);
	image_angle -= (min(abs(traverseDirection), 10) * sign(traverseDirection)) * traverseSpeed * _myDeltaTime;
}

