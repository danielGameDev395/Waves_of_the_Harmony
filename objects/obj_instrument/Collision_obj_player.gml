if (!visible) { exit; }

ds_list_add(global.inventory, {name: instrument, reference: self.sprite_index, cooldown: cooldown_})

if (global.inventory[| 0].name=="Harmonica") {
	ds_list_delete(global.inventory, 0)
}

other.equip_instrument=global.inventory[| ds_list_size(global.inventory)-1]

alarm_set(0, 150)
audio_play_sound(GetInstrument, 0, false)

visible=false