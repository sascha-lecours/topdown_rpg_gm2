/// @description Initialize
event_inherited();

name = "Uninitialized Enemy";
myBulletLayer = "Bullets_enemies";
mainGunType = obj_enemyTurretGun;

shootable = true;

function getPlayer(){
	if(instance_exists(obj_player)) {
		return obj_player;
	} else {
		return obj_gameController; // Return this as a safety. Lazy but effective!
	}
}

function traverseTowardTarget(myTarget, traverseSpeed){
	var targetDirection = point_direction(x, y, myTarget.x, myTarget.y);
	var traverseDirection = angle_difference(facingAngle, targetDirection);
	facingAngle -= (min(abs(traverseDirection), 10) * sign(traverseDirection)) * traverseSpeed * _myDeltaTime;
}

