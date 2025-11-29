// Janela
global.width=1080; global.height=720
window_set_size(global.width, global.height); window_center()
//window_set_fullscreen(true)
surface_resize(application_surface, global.width, global.height)

function resetable_globals() {
	// Inventário
	global.inventory=ds_list_create()
	ds_list_add(global.inventory, {name: "Harmonica", reference: spr_harmonica, cooldown: 50})
}

//resetable_globals()

global.grav=0.5
global.enemies=[
	obj_knight,
	obj_bat
]