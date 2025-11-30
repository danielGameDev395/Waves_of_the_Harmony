// instrumento equipado
player_instrument=player.equip_instrument

// spawna o boss depois de derrotar todos os inimigos
if (global.remaining_enemies==0 && global.alive_enemies==0) {
	if (!instance_exists(obj_boss) && boss_spawned==0) {
		boss_spawned=1
		instance_create_depth(room_width/2, room_height/2, depth, obj_boss)
	}
}