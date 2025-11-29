ds_list_add(global.inventory, {name: instrument, reference: self.sprite_index, cooldown: cooldown_})

if (global.inventory[| 0].name=="Harmonica") {
	ds_list_delete(global.inventory, 0)
}

//alarm_set(0, 150)
room_goto_next()

instance_destroy()