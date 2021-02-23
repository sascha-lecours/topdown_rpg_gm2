/// @description initialize
event_inherited();

maxHp = 1;
curHp = 1;

name = "Unset component-using object name";

flashWhite = false;
flashTime = 0.1;
_curFlashTime = 0;

x_real = x;
y_real = y;

function setHp(_hp){
	curHp = _hp;	
}

function attachComponent(_aComponent){
	with(_aComponent){
		myOwner = other;
		attach();
	}
}

function instantiateComponent(_aComponent){
	return instance_create_layer(x, y, "Components", _aComponent);
}

function updateRealCoordinatesAndTryToMove(hChange, vChange){
	// Apply movement
	x_real += hChange;
	y_real += vChange;

	tryToMove(floor(x_real), floor(y_real)); // Handles collisions with solids
}

function tryToMove(newX, newY){
	if(newX!= x && !place_free(newX, y)){
		var _Xdistance = abs(x - newX);
		if(newX > x) move_contact_solid(0, _Xdistance);
		if(newX < x) move_contact_solid(180, _Xdistance);
		stopSpeed("x");
	} else {
		x = newX;	
	}
	
	if(newY!= y && !place_free(x, newY)){
		var _Ydistance = abs(y - newY);
		if(newY > y) move_contact_solid(270, _Ydistance);
		if(newY < y) move_contact_solid(90, _Ydistance);
		stopSpeed("y");
	} else {
		y = newY;	
	}
}

function showHurt(){
	flashWhite = true;
	_curFlashTime = flashTime;
}

function takeDamage(_damage){
	curHp -= _damage;
	showHurt();
	curHp = max(0, curHp);
	if(curHp == 0) die();
	
}

function stopSpeed(_axis){
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

function die(){
	instance_destroy();	
}