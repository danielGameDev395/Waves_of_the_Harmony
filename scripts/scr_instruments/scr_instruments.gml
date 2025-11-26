function harmonica_attack() {
	instance_create_depth(x+sprite_width/2, y, depth-1, obj_shortWave)
}

function harp_attack() {
	instance_create_depth(x, y, depth-1, obj_healingWave)
	heal=5
	if (hp+heal>max_hp) { hp=max_hp }
	else if (hp<max_hp) { hp+=heal }
}

function tambourine_attack() {
	instance_create_depth(x+sprite_width/2, y, depth-1, obj_shockWave)
}

function cavaquinho_attack() {
	instance_create_depth(x+sprite_width/2, y, depth-1, obj_longWave)
}

function attack() {
	switch (equip_instrument.name) {
		case "Harmonica": harmonica_attack(); break;
		case "Harp": harp_attack(); break;
		case "Tambourine": tambourine_attack(); break;
		case "Cavaquinho": cavaquinho_attack(); break;
	}
}