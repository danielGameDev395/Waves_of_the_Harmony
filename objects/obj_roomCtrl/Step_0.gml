// instrumento equipado
player_instrument=player.equip_instrument

if (global.remaining_enemies==0 && global.alive_enemies==0) {
	room_restart()
}

#region DEBUG

//show_debug_message(string(player))

/*show_debug_message($"Inimigos vivos: {global.alive_enemies}")
show_debug_message($"Inimigos restantes: {global.remaining_enemies}")
*/
/*for (var i=0; i<ds_list_size(global.inventory); i++) {
	show_debug_message(string(global.inventory[| i]))
}
*/

#endregion