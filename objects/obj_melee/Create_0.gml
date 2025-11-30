shooter=instance_nearest(x, y, shooter_obj)

if (!instance_exists(shooter)) { instance_destroy(); exit; }

image_xscale=shooter.image_xscale

image_alpha=1
dmg=4

alarm_set(0, 10)

audio_play_sound(MeleeHit, 0, false)