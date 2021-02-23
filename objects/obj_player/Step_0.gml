/// @description Step
event_inherited();

//Get input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
buttonFire1 = mouse_check_button(mb_left);
buttonFire2 = mouse_check_button(mb_right);
keyDash = keyboard_check(vk_lshift);

inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft !=0) || (keyDown - keyUp != 0);

// Updates hSpeed and vSpeed
calculateMoveSpeeds();

updateRealCoordinatesAndTryToMove(hSpeed, vSpeed);

// Determine correct direction for torso to face
facingAngle = point_direction(x, y, mouse_x, mouse_y); // Later this may get more complex -> slower traverse?

// Move components // TODO: Move this method to create event and call it here for each piece
// TODO cont'd: array of components for each component user, with offsets.
with(leftGun){
	x= other.x + lengthdir_x(other.leftGunOffsetDistance, other.leftGunOffsetAngle + other.facingAngle);
	y= other.y + lengthdir_y(other.leftGunOffsetDistance, other.leftGunOffsetAngle + other.facingAngle);
}

with(rightGun){
	x= other.x + lengthdir_x(other.rightGunOffsetDistance, other.rightGunOffsetAngle + other.facingAngle);
	y= other.y + lengthdir_y(other.rightGunOffsetDistance, other.rightGunOffsetAngle + other.facingAngle);
}

// Movement complete, update sprite:

updateSprite();

// Attacking:

if(buttonFire1){
	with(leftGun) tryToShoot(point_direction(x, y, mouse_x, mouse_y));
}

if(buttonFire2){
	with(rightGun) tryToShoot(point_direction(x, y, mouse_x, mouse_y));
}

// Use dash item:

if(keyDash){
	with(dashModule) tryToDash();	
}