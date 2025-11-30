shooter=instance_nearest(x, y, obj_player)

if (!instance_exists(shooter)) { instance_destroy(); exit; }

image_xscale=shooter.image_xscale

spd=5
xspd=image_xscale*spd; yspd=0

range=150
dmg=3

audio_play_sound(ProjectileShoot, 0, false)