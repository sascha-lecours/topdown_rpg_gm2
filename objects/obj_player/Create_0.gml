/// @description Initialize
event_inherited();

name = "Player";

maxHp = 10;
setHp(maxHp);

topWalkSpeed = 3.5;
acceleration = 2;

x_real = x;
y_real = y;

hSpeed = 0;
vSpeed = 0;
walkspeedBoost = 0;
facingAngle = 0; // updated instead of image_angle, passed to sprite object.

// Starting components
leftGunType = obj_machineGun;
rightGunType = obj_rocketLauncher;
dashModuleType = obj_mobility;

_mySprite = instance_create_layer(x, y, "Player", obj_player_sprite);
myBulletLayer = "Bullets_player";

//Set custom mouse cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

function updateSprite(){
	_mySprite.x = x;
	_mySprite.y = y;
	_mySprite.image_angle = facingAngle;
}

function getWalkSpeed(){
	return(topWalkSpeed + walkspeedBoost);	
}

function calculateMoveSpeeds(){
	// Calculate movement
	var hSpeed_old = hSpeed;
	var vSpeed_old = vSpeed;
	var hSpeed_new = lengthdir_x(inputMagnitude * getWalkSpeed(), inputDirection);
	var vSpeed_new = lengthdir_y(inputMagnitude * getWalkSpeed(), inputDirection);
	hSpeed = lerp(hSpeed_old, hSpeed_new, acceleration * _myDeltaTime);
	vSpeed = lerp(vSpeed_old, vSpeed_new, acceleration * _myDeltaTime);	
}

// Item slots:

//TODO: Refactor into array & update "move" code in step

leftGunOffsetDistance = 17;
leftGunOffsetAngle = 45;
leftGun = instantiateComponent(leftGunType);
attachComponent(leftGun);

rightGunOffsetDistance = 17;
rightGunOffsetAngle = -45;
rightGun = instantiateComponent(rightGunType);
attachComponent(rightGun);


dashModule =  instantiateComponent(dashModuleType);
attachComponent(dashModule);