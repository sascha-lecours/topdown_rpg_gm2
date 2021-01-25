/// @description Reduce cooldown and recoil
event_inherited();

_myRecoil = lerp(_myRecoil, 0, recoilReductionRate*_myDeltaTime);
_myShotcooldown -= _myDeltaTime;
