can_spawn=1

global.alive_enemies=0

switch (room) {
	case rm_stage1: global.remaining_enemies=7; spawn_limiter=5 break;
	case rm_stage2: global.remaining_enemies=9; spawn_limiter=6 break;
	case rm_stage3: global.remaining_enemies=11; spawn_limiter=7 break;
	case rm_stage4: global.remaining_enemies=13; spawn_limiter=8 break;
	default: global.remaining_enemies=300; spawn_limiter=1 break;
}