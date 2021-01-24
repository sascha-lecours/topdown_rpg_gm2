/// @description Reduce cooldown and recoil
_myDeltaTime = delta_time/deltaTimeConstant;

_myRecoil = lerp(_myRecoil, 0, recoilReductionRate*_myDeltaTime);
