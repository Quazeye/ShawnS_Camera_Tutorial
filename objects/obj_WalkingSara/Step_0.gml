if (movementDirection == movingLeft) {
	x = x - walkSpeed;
	sprite_index = sprSaraWalkLeft;
	image_speed = walkSpeed / 3;
	if (x <= 600) {
		movementDirection = movingRight;
	}
}

if (movementDirection == movingRight) {
	x = x + walkSpeed;
	sprite_index = sprSaraWalkRight;
	image_speed = walkSpeed / 3;
	if (x >= 950) {
		movementDirection = movingLeft;
	}
}