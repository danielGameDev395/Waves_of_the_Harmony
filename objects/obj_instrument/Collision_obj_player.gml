ds_list_add(global.inventory, {name: instrument, reference: self.sprite_index, cooldown: cooldown_})

/*if (global.inventory[| 0].name=="Harmonica") {
	ds_list_delete(global.inventory, 0)
}*/

// passa de fase *
//other.equip_instrument=ds_list_find_value(global.inventory, ds_list_size(global.inventory)-1)
other.equip_instrument=global.inventory[| ds_list_size(global.inventory)-1]
// *

instance_destroy()