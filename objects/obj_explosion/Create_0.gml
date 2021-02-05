/// @description Initialize
event_inherited();

explosionSize = 1; // size 10 -> 1:1 scale
explosionDamage = 1;

explosionBlastAcceleration = 3.75; // used in size lerp
explosionLinger = 0.01; // time to linger at full size
explosionFudge = 0.2; // "fudge" factor to allow for the lerp not converging

_currentSize = 0;
image_xscale = _currentSize;
image_yscale = _currentSize;
_lingerTimer = explosionLinger;
_lingering = false;