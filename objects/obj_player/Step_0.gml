#region Controles
var right=keyboard_check(vk_right) || keyboard_check(ord("D"))
var left=keyboard_check(vk_left) || keyboard_check(ord("A"))
var jump_but=keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("J"))
var attack_but=keyboard_check_pressed(ord("K"))
#endregion

#region Movimentação lateral
// velocidade
var move=right-left
xspd=move*spd

// escala
if (move!=0) { image_xscale=move }

// colisão
if (place_meeting(x+xspd, y, obj_solid)) {
	while !(place_meeting(x+sign(xspd), y, obj_solid)) { x+=sign(xspd) }
	xspd=0
}

x+=xspd
#endregion

#region Movimentação vertical
// colisão
if !(place_meeting(x, y+1, obj_solid)) {
	yspd+=global.grav
}
// pulo
else if (jump_but) { yspd=jump_spd } 

if (place_meeting(x, y+yspd, obj_solid)) {
	while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
	yspd=0
}

y+=yspd
#endregion

#region Ataque
if (attack_but && can_attack==1) {
	switch (equip_instrument.name) {
		case "Harmonica": harmonica_attack(); cooldown=50; break;
		case "Harp": harp_attack(); cooldown=120; break;
	}
	show_debug_message($"ATACOU COM *{string_upper(equip_instrument.name)}*")
	can_attack=0; alarm_set(0, cooldown)
}
#endregion