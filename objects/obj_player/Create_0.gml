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
facingAngle = 0; //updated instead of image_angle, passed to sprite object.

// Starting components
leftGunType = obj_machineGun;
rightGunType = obj_rocketLauncher;
dashModuleType = obj_mobility;

_mySprite = instance_create_layer(x, y, "Instances", obj_player_sprite);

//Set custom mouse cursor
window_set_cursor(cr_none);
cursor_sprite = spr_cursor;

function attachComponent(_aComponent){
	with(_aComponent){
		myOwner = other;
	}
}

function updateSprite(){
	_mySprite.x = x;
	_mySprite.y = y;
	_mySprite.image_angle = facingAngle;
}

function tryToMove(newX, newY){
	if(newX!= x && !place_free(newX, y)){
		var _Xdistance = abs(x - newX);
		if(newX > x) move_contact_solid(0, _Xdistance);
		if(newX < x) move_contact_solid(180, _Xdistance);
		stop_speed("x");
	} else {
		x = newX;	
	}
	
	if(newY!= y && !place_free(x, newY)){
		var _Ydistance = abs(y - newY);
		if(newY > y) move_contact_solid(270, _Ydistance);
		if(newY < y) move_contact_solid(90, _Ydistance);
		stop_speed("y");
	} else {
		y = newY;	
	}
}

function stop_speed(_axis){
	switch (_axis){
		case "x":
			hSpeed = 0;
			x_real = x;
			break;
		case "y":
			vSpeed = 0;
			y_real = y;
			break;
		default:
			hSpeed = 0;
			x_real = x;
			vSpeed = 0;
			y_real = y;
	}
}

// Item slots:

//TODO: Refactor into array & update "move" code in step

leftGunOffsetDistance = 17;
leftGunOffsetAngle = 45;
leftGun = instance_create_layer(x, y, "Instances", leftGunType);
attachComponent(leftGun);

rightGunOffsetDistance = 17;
rightGunOffsetAngle = -45;
rightGun = instance_create_layer(x, y, "Instances", rightGunType);
attachComponent(rightGun);


dashModule =  instance_create_layer(x, y, "Instances", dashModuleType);
attachComponent(dashModule);