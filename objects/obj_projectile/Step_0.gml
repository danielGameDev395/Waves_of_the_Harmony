x+=xspd
y+=yspd
distanceX+=xspd
distanceY+=yspd

switch (instrument) {
	case "Harmonica":	
		if (abs(distanceX)>=100) { instance_destroy() }
		break;
	case "Harp":
		if (distanceY<=-100) { instance_destroy() }
		break;
}