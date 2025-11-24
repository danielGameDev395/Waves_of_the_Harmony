function resetable_globals() {
	// Inventário
	global.inventory=ds_list_create()
	ds_list_add(global.inventory, {name: "Harmonica", reference: spr_harmonica})
	
	/*global.alive_enemies=0
	global.remaining_enemies=5*/
}

resetable_globals()

global.grav=0.5
global.enemies=[
	obj_common,
	obj_bat
]