/// @description Person (Heart) initialization.

// Sprite selection:
image_speed = 0;// Don't cycle through frames
image_index = 1;// Half heart

// Find BLACK Heart in relation to current Person/Heart:
target = instance_find(obj_heart_black, 0);
cupid = instance_find(obj_cupid, 0);

mySpeed = 1;

function becomeSuperBroken(){
	image_index = 2;
	mySpeed = 15;
	target = obj_heart_black;
}

function convertSpriteToNumber(person){
	if(person.sprite_index == spr_hearts_red) return 0;
	if(person.sprite_index == spr_hearts_orange) return 1;
	if(person.sprite_index == spr_hearts_yellow) return 2;
	if(person.sprite_index == spr_hearts_green) return 3;
	if(person.sprite_index == spr_hearts_blue) return 4;
	if(person.sprite_index == spr_hearts_purple) return 5;
	//yelllow, green, blue, purple
}

function getCompatibility(otherPerson){
	var myNumber = convertSpriteToNumber(self);
	var theirNumber = convertSpriteToNumber(otherPerson);
	
	// perfecct match:
	var myPerfectNumber = myNumber;
	
	//one off:
	var mySecondBest = myNumber-1;
	if(mySecondBest<0){
	//loops back around array
	mySecondBest = 6-mySecondBest;
	}
	var mySecondBest2 = myNumber+1;
	if(mySecondBest2>=6){
	//loops back around array
	mySecondBest2 = mySecondBest2-6;
	}
	
	//two off:
	var myThirdBest = myNumber-2;
	if(myThirdBest<0){
	//loops back around array
	myThirdBest = 6-myThirdBest;
	}
	var myThirdBest2 = myNumber+2;
	if(myThirdBest2>=6){
	//loops back around array
	myThirdBest2 = myThirdBest2-6;
	}
	
	//three off:
	var myFourthBest = myNumber-3;
	if(myFourthBest<0){
	//loops back around array
	myFourthBest = 6-myFourthBest;
	}
	var myFourthBest2 = myNumber+3;
	if(myFourthBest2>=6){
	//loops back around array
	myFourthBest2 = myFourthBest2-6;
	}
	
	if(myNumber == theirNumber) return "PERFECT match";
	if(theirNumber == mySecondBest || theirNumber == mySecondBest2) return "Great match";
	if(theirNumber == myThirdBest || theirNumber == myThirdBest2) return "Poor match";
	if(theirNumber == myFourthBest || theirNumber == myFourthBest2) return "OPPOSITE match. TERRIBLE!";
}

function getPersonality(){
	var personalities = [spr_hearts_red, spr_hearts_orange, spr_hearts_yellow, spr_hearts_green, spr_hearts_blue, spr_hearts_purple];
	
	var index = random(array_length(personalities));
	
	return personalities[index];
}

sprite = getPersonality();