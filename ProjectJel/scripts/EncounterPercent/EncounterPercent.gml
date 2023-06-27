function EncounterPercent(){
	EFunctionVar = 1;
	random_set_seed(current_second*current_hour*current_minute*current_day*current_month);
	if (random(10) >= 8)
		{
			// have fun joel hehe go to battle
			EFunctionVar = 2;
		}
}