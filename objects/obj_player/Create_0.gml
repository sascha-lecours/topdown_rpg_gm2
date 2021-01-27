/// @description Initialize
event_inherited();

name = "Player";

topWalkSpeed = 3.5;
acceleration = 2;

x_real = x;
y_real = y;

hSpeed = 0;
vSpeed = 0;
walkspeedBoost = 0;

//Set custom mouse cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

function attachComponent(_aComponent){
	with(_aComponent){
		myOwner = other;
	}
}

// Item slots:

//TODO: Refactor into array & update "move" code in step

leftGunOffsetDistance = 17;
leftGunOffsetAngle = 45;
leftGunType = obj_machineGun;
leftGun = instance_create_layer(x, y, "Instances", leftGunType);
attachComponent(leftGun);

rightGunOffsetDistance = 17;
rightGunOffsetAngle = -45;
rightGunType = obj_shotGun;
rightGun = instance_create_layer(x, y, "Instances", rightGunType);
attachComponent(rightGun);

dashModuleType = obj_mobility;
dashModule =  instance_create_layer(x, y, "Instances", dashModuleType);
attachComponent(dashModule);