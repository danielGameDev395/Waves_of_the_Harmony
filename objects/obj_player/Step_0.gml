if (dead==1) { exit; }
can_attack=1; hp=999
if (hp<=0) { 
	dead=1; visible=false; audio_stop_all(); audio_play_sound(PlayerDefeated, 0, false)
	alarm_set(2, audio_sound_length(PlayerDefeated)*game_get_speed(gamespeed_fps))
}

#region Controls
var right=keyboard_check(vk_right) || keyboard_check(ord("D"))
var left=keyboard_check(vk_left) || keyboard_check(ord("A"))
var jump_but=keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("J"))
var attack_but=keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("K"))
#endregion

#region Horizontal move
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

#region Vertical move
if !(place_meeting(x, y+1, obj_solid)) { yspd+=global.grav }
else if (jump_but) { audio_play_sound(Jump, 0, false); yspd=jump_spd } 

if (place_meeting(x, y+yspd, obj_solid)) {
	while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
	yspd=0
}

y+=yspd
#endregion

#region Instrument change
if (can_attack==1) {
	for (var i=0; i<ds_list_size(global.inventory); i++) {
		if (keyboard_check_pressed(ord("1")+i) && equip_instrument!=global.inventory[| i]) {
			audio_play_sound(InstrumentSelect, 0, false)
			equip_instrument=global.inventory[| i]
			break;
		}
	}
}
#endregion

#region Attack
if (attack_but && can_attack==1) {
	attack()
	can_attack=0; alarm_set(0, equip_instrument.cooldown)
}
#endregion
