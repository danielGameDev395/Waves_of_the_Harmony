player=instance_nearest(x, y, obj_player)

draw_distance=abs(player.sprite_width)

boss_spawned=0

audio_stop_all()

alarm_set(0, 30)

#region Background
switch (room) {
	case rm_stage1: blend=c_dkgray break;
	case rm_stage2: blend=c_gray break;
	case rm_stage3: blend=c_ltgray break;
	default: blend=c_white break;
}

layer_background_blend(layer_background_get_id(layer_get_id("Sky")), blend)
layer_background_blend(layer_background_get_id(layer_get_id("Clouds")), blend)

var lay_elements=layer_get_all_elements(layer_get_id("Assets"))
for (var i=0; i<array_length(lay_elements); i++) {
	layer_sprite_blend(lay_elements[i], blend)
}
#endregion