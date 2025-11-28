if (other.invincible==1) { exit; }

other.hp-=dmg

with (other) {
	invincible=1; 
	image_blend=c_ltgray; alarm_set(1, 105)
}

instance_destroy()