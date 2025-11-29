first_cl_x=display_get_gui_width()/4
second_cl_x=display_get_gui_width()-first_cl_x
initY=display_get_gui_height()/12

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_font(ft_title)
draw_text(display_get_gui_width()/2, initY, "Controls")

initY=display_get_gui_height()/4

draw_set_font(ft_content)
for (var i=0; i<array_length(buttons); i++) {
	draw_text(first_cl_x, initY, buttons[i])
	draw_text(second_cl_x, initY, functions[i])
	initY+=30
}


draw_set_font(-1)
draw_set_halign(-1)
draw_set_valign(-1)