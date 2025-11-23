image_xscale=obj_player.image_xscale

instrument=obj_player.equip_instrument.name

distanceX=0
distanceY=0

switch (instrument) {
	case "Harmonica":
		sprite_index=spr_shortWave; xspd=5*image_xscale; yspd=0
		break;
	case "Harp":
		sprite_index=spr_healing; xspd=0; yspd=-3
		break;
}