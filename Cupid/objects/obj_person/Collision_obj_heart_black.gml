/// @description Collision with Black Heart.

/*
 * Destroy Red Heart 
 */
 
 obj_cupid.total_number_single_ppl += 1;
 
 for(var i = 0; i<instance_number(obj_person); ++i){
		var currentPerson = instance_find(obj_person, i);
		if(currentPerson.target.id == id){
			currentPerson.becomeSuperBroken();
		}
	}
 
 show_debug_message("total number of single people is now: " + string(obj_cupid.total_number_single_ppl));
 instance_destroy();