other.hp-=dmg

with (other) {
	image_blend=c_gray; alarm_set(1, 45)
}

audio_play_sound(ProjectileHit, 0, false)

instance_destroy()