/// @description decrement cooldown

event_inherited();

if(_myCooldown > 0){
	_myCooldown -= _myDeltaTime;
}

if(_myClearboostTimer >= 0){
	_myClearboostTimer -= _myDeltaTime;	
}

// Remove the boost if it's expired
if(_boosted && _myClearboostTimer <= 0){
	show_debug_message("clear boost")
	clearBoost();	
}
