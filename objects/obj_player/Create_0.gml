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

// Starting components
leftGunType = obj_machineGun;
rightGunType = obj_shotGun;
dashModuleType = obj_mobility;

leftGunOffsetDistance = 17;
leftGunOffsetAngle = 45;

rightGunOffsetDistance = 17;
rightGunOffsetAngle = -45;

// Starting Component Structs:

leftGunComponent = {
	componentObject : leftGunType, // obj to be spawned
	offsetDistance : leftGunOffsetDistance, // Offsets relative to image at 0 degrees, in pixels
	offsetAngle : leftGunOffsetAngle,
	instance : noone
}

rightGunComponent = {
	componentObject : rightGunType, // obj to be spawned
	offsetDistance : rightGunOffsetDistance, // Offsets relative to image at 0 degrees, in pixels
	offsetAngle : rightGunOffsetAngle,
	instance : noone
}

mobilityComponent = {
	componentObject : dashModuleType, // obj to be spawned
	offsetDistance : 0, // Offsets relative to image at 0 degrees, in pixels
	offsetAngle : 0,
	instance : noone
}


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

// TODO: Refactor into array


instantiateComponent(leftGunComponent);
attachComponent(leftGunComponent);


instantiateComponent(rightGunComponent);
attachComponent(rightGunComponent);


instantiateComponent(mobilityComponent);
attachComponent(mobilityComponent);