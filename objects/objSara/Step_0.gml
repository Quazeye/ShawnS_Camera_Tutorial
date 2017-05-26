/// @description Insert description here
if(keyboard_check(ord("D"))) { //Move to the right
	x += walkSpeed; //Physically moves the object the amount of walkSpeed to the right
	image_speed = walkSpeed / 3; //Moves through the frames of the playing sprite
	sprite_index = sprSaraWalkRight; //Assigns the walking right sprite when D is pressed
}
if(keyboard_check(ord("A"))) { //Move to the left
	x -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sprSaraWalkLeft;
}
if(keyboard_check(ord("W"))) { //Move Up
	y -= walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sprSaraWalkUp;
}
if(keyboard_check(ord("S"))) { //Move Down
	y += walkSpeed;
	image_speed = walkSpeed / 3;
	sprite_index = sprSaraWalkDown;
}
if(keyboard_check(vk_shift)) { //Run faster
	walkSpeed = 7; //Doubles the walk speed into a running speed
}
if(keyboard_check(vk_nokey)) { //Stop animating
	image_speed = 0; //Set speed of playing frames to 0
	image_index = 0; //Set current frame to 0
	walkSpeed = 3.5; //Return speed to normal
}