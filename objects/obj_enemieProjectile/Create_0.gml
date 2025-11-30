shooter=instance_nearest(x, y, shooter_obj)

if (!instance_exists(shooter)) { instance_destroy(); exit; }

image_xscale=shooter.image_xscale

spd=6
xspd=image_xscale*spd; yspd=0

range=200

switch (room) {
	case rm_stage1: dmg=5 break;	
	case rm_stage2: dmg=5 break;	
	case rm_stage3: dmg=6 break;	
	case rm_stage4: dmg=6 break;	
}