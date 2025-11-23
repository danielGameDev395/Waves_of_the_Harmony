function resetable_globals() {
	// Inventário
	global.inventory=ds_list_create()
	ds_list_add(global.inventory, {name: "Harmonica", reference: spr_harmonica})
}

resetable_globals()

global.grav=0.5