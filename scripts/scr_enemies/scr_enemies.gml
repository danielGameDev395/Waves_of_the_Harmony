function bat_dive() {
	image_angle=-45*image_xscale
	y+=yspd
	if (place_meeting(x, y+1, obj_solid)) { yspd*=-1 }
	if (y<=ystart) { yspd*=-1; image_angle=0; can_dive=0; alarm_set(0, 90) }
}