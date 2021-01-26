/// @description Initialize
event_inherited();

name = "Player";

topWalkSpeed = 3.5;
acceleration = 2;
x_real = x;
y_real = y;

hSpeed = 0;
vSpeed = 0;

//Set custom mouse cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

function InitializeGun(_aGun){
	with(_aGun){
		myOwner = other;
	}
}

// Item slots:

leftGunOffsetDistance = 17;
leftGunOffsetAngle = 45;
leftgunType = obj_machineGun;
leftGun = instance_create_layer(x, y, "Instances", leftgunType);
InitializeGun(leftGun);
