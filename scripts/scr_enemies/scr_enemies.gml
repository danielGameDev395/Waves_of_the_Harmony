function bat_dive() {
	image_angle=-45*image_xscale
	y+=yspd
	if (place_meeting(x, y+1, obj_solid)) { yspd*=-1 }
	if (y<=ystart) { yspd*=-1; image_angle=0; can_dive=0; alarm_set(0, 90) }
}

function knight_throw() {
	can_throw=0; alarm_set(0, 100)
	instance_create_depth(x+sprite_width/2, y-sprite_height/2, depth-1, obj_brick)
}

function boss_smash() {
	x-=xspd
	if (can_smash==1) { can_smash=0; instance_create_depth(x+sprite_width, y-sprite_height/4, depth-1, obj_smash) }
	if (!instance_exists(obj_smash)) { can_skill=0; alarm_set(0, 120) }
	
}

function boss_gaunglet() {
	can_skill=0; alarm_set(0, 180)
	instance_create_depth(x+sprite_width/2, y-sprite_height/2, depth-1, obj_gaunglet)
}