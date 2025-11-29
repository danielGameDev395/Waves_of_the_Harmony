centerX=display_get_gui_width()/2
centerY=display_get_gui_height()/2

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// Title
draw_set_font(ft_title)
draw_text(centerX, centerY/2, "Waves of the Harmony")

// Options
draw_set_font(ft_content)

for (var i=0; i<array_length(options); i++) {
	if (index==i) { draw_set_color(c_red) }
	else { draw_set_color(c_white) }
	draw_text(centerX, centerY+30*i, options[i])
}

draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)
draw_set_color(c_white)