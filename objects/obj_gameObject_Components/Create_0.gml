/// @description initialize
event_inherited();

name = "Unset component-using object name";

function attachComponent(_aComponent){
	with(_aComponent){
		myOwner = other;
		attach();
	}
}



function instantiateComponent(_aComponent){
	return instance_create_layer(x, y, "Components", _aComponent);
}