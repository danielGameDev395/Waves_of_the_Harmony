function harmonica_attack() {
	instance_create_depth(x+sprite_width/2, y, depth-1, obj_projectile)
}

function harp_attack() {
	instance_create_depth(x, y, depth-1, obj_projectile)
}