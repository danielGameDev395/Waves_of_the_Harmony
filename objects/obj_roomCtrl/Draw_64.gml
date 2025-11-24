#region Coordenadas
width=display_get_gui_width()
height=display_get_gui_height()

borderX=width/32
borderY=height/32
#endregion

#region HUD
// seletor de instrumentos
for (var i=0; i<ds_list_size(global.inventory); i++) {
	spr=global.inventory[| i].reference
	hud_box = spr==player_instrument.reference? 0:1
	
	draw_sprite(spr_instrumentBox, hud_box, borderX+draw_distance*i, borderY)
	draw_sprite(spr, 0, borderX+draw_distance*i, borderY)
}
#endregion