player=instance_nearest(x, y, obj_player)

draw_distance=abs(player.sprite_width)

boss_spawned=0

audio_stop_all()

alarm_set(0, 30)