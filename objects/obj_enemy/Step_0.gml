if (hp<=0) { instance_destroy() }

// distância e escala
distance=player.x-x
if (distance!=0) { image_xscale=sign(distance) }
if (abs(distance)<=range) { can_skill=1 }
else { can_skill=0 }

#region Movimentação lateral (perseguição)
xspd = distance!=0? image_xscale*spd:0

if (place_meeting(x+xspd, y, obj_solid)) {
	while !(place_meeting(x+sign(xspd), y, obj_solid)) { x+=sign(xspd) }
	xspd=0
}

x+=xspd
#endregion

#region Movimentação vertical (gravidade)
if (fly==0) {
	if (!place_meeting(x+1, y, obj_solid)) {
		yspd+=global.grav
	}

	if (place_meeting(x, y+yspd, obj_solid)) {
		while !(place_meeting(x, y+sign(yspd), obj_solid)) { y+=sign(yspd) }
		yspd=0
	}

	y+=yspd
}
#endregion

