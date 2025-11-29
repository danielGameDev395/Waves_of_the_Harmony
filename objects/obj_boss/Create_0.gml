event_inherited();

range*=1.5
long_range=3*range

switch (room) {
	case rm_stage1: hp=9; contact_dmg=3; gaunglet_dmg=4; smash_dmg=5 break;
	case rm_stage2: hp=12; contact_dmg=4; gaunglet_dmg=5; smash_dmg=6 break;
	case rm_stage3: hp=15; contact_dmg=5; gaunglet_dmg=6; smash_dmg=7 break;
	case rm_stage4: hp=18; contact_dmg=6; gaunglet_dmg=8; smash_dmg=9 break;
	default: hp=9; contact_dmg=3; gaunglet_dmg=4; smash_dmg=5 break;
}

jump=1

can_skill=1
can_smash=1