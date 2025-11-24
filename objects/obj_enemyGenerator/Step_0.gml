if (can_spawn==1 && global.remaining_enemies>0 && global.alive_enemies<spawn_limiter) {
	can_spawn=0; alarm_set(0, 420)
	
	enemy_number=irandom(array_length(global.enemies)-1)
	random_y=irandom(6)
	
	instance_create_depth(x, y+random_y*self.sprite_height, depth+1, global.enemies[enemy_number])
	global.alive_enemies++; global.remaining_enemies--
}