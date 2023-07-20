function TrainerText(){
if(room == Route8){
		if(global.TrainerID == 100035){
			text = "Your";
			return(text);
		}
		
		if(global.TrainerID == 100037 || 100034){
			text = "Mom";
			return(text);
		}
		
		if(global.TrainerID == 100038 || 100033){
			text = "Gotteem";
			return(text);
		}
	}

if(room == Sandstone_Passage_F1){
		if(global.TrainerID == 100001){
			text = "Never gonna give you up, never gonna let you down";
			return(text);
		}
	}

if(room == Sandstone_Passage_F2){
		if(global.TrainerID == -4){
			text = "Never gonna let you down";
			return(text);
		}
	}

}