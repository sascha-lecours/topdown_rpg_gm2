/// @description Step
event_inherited();

//Get input
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
buttonFire1 = mouse_check_button(mb_left);
buttonFire2 = mouse_check_button(mb_right);
keyDash = keyboard_check(vk_lshift);

inputDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp);
inputMagnitude = (keyRight - keyLeft !=0) || (keyDown - keyUp != 0);

// Calculate movement
hSpeed_old = hSpeed;
vSpeed_old = vSpeed;
hSpeed_new = lengthdir_x(inputMagnitude * topWalkSpeed, inputDirection);
vSpeed_new = lengthdir_y(inputMagnitude * topWalkSpeed, inputDirection);
hSpeed = lerp(hSpeed_old, hSpeed_new, acceleration * _myDeltaTime);
vSpeed = lerp(vSpeed_old, vSpeed_new, acceleration * _myDeltaTime);

// Apply movement
x += hSpeed * _myDeltaTime;
y += vSpeed * _myDeltaTime;

// Rotate Turret
image_angle = point_direction(x, y, mouse_x, mouse_y); // Later this may get more complex -> slower traverse?

// Attacking:

if(buttonFire1){
	with(leftGun) tryToShoot(x,y, image_angle);
}
