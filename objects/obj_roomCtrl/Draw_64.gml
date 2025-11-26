#region Coordenadas
width=display_get_gui_width()
height=display_get_gui_height()

borderX=width/32
borderY=height/16
#endregion

#region HUD
// seletor de instrumentos
for (var i=0; i<ds_list_size(global.inventory); i++) {
	spr=global.inventory[| i].reference
	hud_box = spr==player_instrument.reference? 0:1
	
	draw_sprite(spr_instrumentBox, hud_box, borderX+draw_distance*i, borderY)
	draw_sprite(spr, 0, borderX+draw_distance*i, borderY)
}

// barra de vida
draw_sprite_ext(spr_life, 0, borderX, borderY+player.sprite_height*0.75, player.sprite_height*2/player.max_hp*player.hp, 1, 0, c_white, 1)
draw_sprite(spr_lifeBar, 0, borderX, borderY+player.sprite_height*0.75)

// barra de cooldown
new_cooldown=player.equip_instrument.cooldown-player.alarm[0]
draw_sprite_ext(spr_cooldown, 0, borderX, borderY+player.sprite_height*1.5, 28/player.equip_instrument.cooldown*new_cooldown, 1, 0, c_white, 1)
draw_sprite(spr_cooldownBar, 0, borderX, borderY+player.sprite_height*1.5)

#endregion

