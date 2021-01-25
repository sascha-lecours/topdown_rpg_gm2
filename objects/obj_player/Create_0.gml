/// @description Initialize
event_inherited();

name = "Player";

topWalkSpeed = 3.5;
acceleration = 0.1;

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

leftGunOffsetX = 0;
leftGunOffsetY = 0;
leftgunType = obj_machineGun;
leftGun = instance_create_layer(x+leftGunOffsetX, y+leftGunOffsetY, "Instances", leftgunType);
InitializeGun(leftGun);
