/// @description Insert description here
// You can write your code in this editor

// Heart should go from half full to full
// then, go to person closest instead of black heart



with(other){
	// Update sprite:
	image_index = 0;
	
	mySpeed = 10;

	// Update target:
	var closestDist = 999999;
	var closest_person = undefined;

	for(var i=0; i<instance_number(obj_person); ++i){
		var current_person = instance_find(obj_person, i);
		var current_dist = distance_to_point(current_person.x,current_person.y);
	
		if(current_dist < closestDist){
			closestDist = current_dist;
			closest_person = current_person;
		}
	
	}
	
	targetX = closest_person.x;
	targetY = closest_person.y;
	
}
instance_destroy();