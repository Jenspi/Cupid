/// @description Insert description here
// You can write your code in this editor

var randomX = random_range(-20, 20);
var randomY = random_range(-20, 20);

instance_create_layer(x+randomX, y+randomY, "Instances", obj_person);
alarm[0] = random_range(30, 60);//reset alarm for 30-60 frames later