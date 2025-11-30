audio_play_sound(BossDefeated, 0, false)

if (room!=rm_stage4) { instance_create_depth(room_width/2, room_height/2, depth, obj_instrument) }
else { room_goto_next() }