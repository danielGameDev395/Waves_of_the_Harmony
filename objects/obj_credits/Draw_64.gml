centerX=display_get_gui_width()/2
finalY=display_get_gui_height()-display_get_gui_height()/16

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

var distance=60

draw_set_font(ft_title)
draw_text(centerX, finalY-text_spd, "Credits")

for (var i1=0; i1<array_length(credits); i1++) {
	for (var i2=0; i2<array_length(credits[i1]); i2++) {
		if (i2==0) { draw_set_font(ft_title) }
		else { draw_set_font(ft_content) }
		draw_text(centerX, finalY+distance-text_spd, credits[i1][i2])
		distance+=30
	}
	distance+=30
}

text_spd++

draw_set_halign(-1)
draw_set_valign(-1)
draw_set_font(-1)