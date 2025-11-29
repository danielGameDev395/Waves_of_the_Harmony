player=instance_nearest(x, y, obj_player)

spd=2
xspd=0; yspd=0
jump_spd=-6

range=100
can_skill=0

switch (room) {
	case rm_stage1: hp=5; contact_dmg=3 break;
	case rm_stage2: hp=6; contact_dmg=3 break;
	case rm_stage3: hp=7; contact_dmg=4 break;
	case rm_stage4: hp=8; contact_dmg=4 break;
	default: hp=5; contact_dmg=3 break;
}

fly=0
jump=0