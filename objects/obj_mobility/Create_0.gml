/// @description Initialize
event_inherited();

name = "Generic mobility slot";
myOwner = noone;

walkspeedBoostStrength = 20;
boostDuration = 0.2;
cooldown = 0.9;
shakeOnUse = 30;

_myCooldown = 0;
_myClearboostTimer = 0;
_boosted = false;

function tryToDash() {
	if(_myCooldown > 0) return;
	myOwner.walkspeedBoost = walkspeedBoostStrength;
	_myCooldown = cooldown;
	_boosted = true;
	_myClearboostTimer = boostDuration;
	obj_gameController.addScreenShake(shakeOnUse, shakeOnUse);
}

function clearBoost() {
	myOwner.walkspeedBoost -= walkspeedBoostStrength;
	_boosted = false;
}
