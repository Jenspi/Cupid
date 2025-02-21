/// @description Collision with other people

if(image_index != 0 && other.image_index != 0){
	return;
}
else{
	// they're already in love with someone else
	becomeSuperBroken()
	
	for(var i = 0; i<instance_number(obj_person); ++i){
		var currentPerson = instance_find(obj_person, i);
		if(currentPerson.target.id == id || currentPerson.target.id = other.id){
			currentPerson.becomeSuperBroken();
		}
	}
	
	show_debug_message("A match has occurred!");
	show_debug_message(getCompatibility(other))
	
	// UI
	if(getCompatibility(other) == "0") cupid.number_perfect_matches+=1;
	else if(getCompatibility(other) == "1") cupid.number_good_matches+=1;
	else if(getCompatibility(other) == "2") cupid.number_poor_matches+=1;
	else if(getCompatibility(other) == "3"){
		if(random(100 > 92)){
			//miracle
			cupid.number_miracle_matches+=1;
		}
		else{
			cupid.number_terrible_matches+=1;
		}
	}
	
	instance_destroy(other);
	instance_destroy();
}
