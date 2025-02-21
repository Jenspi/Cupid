/// @description Cupid movement.

/* This gets the job done; for more complexity,
 * implement acceleration and velocity.
 */

if(keyboard_check(vk_right)){
	x+= 5;
}
if(keyboard_check(vk_left)){
	x -= 5;
}
if(keyboard_check(vk_down)){
	y += 5;
}
if(keyboard_check(vk_up)){
	y -= 5;
}

if(keyboard_check_pressed(vk_space)){
	instance_create_layer(x,y, "Instances", );
}