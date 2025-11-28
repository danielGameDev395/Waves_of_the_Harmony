event_inherited();

distance=abs(distance)

if (can_skill==1) {
	if (distance<=range) { boss_smash() }
	else if (distance<=long_range) { boss_gaunglet() }
}