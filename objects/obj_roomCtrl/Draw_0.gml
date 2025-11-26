// desenha o instrumento equipado na frente do jogador
draw_sprite_ext(player_instrument.reference, 0, player.x+player.sprite_width/4, player.y, player.image_xscale, 1, 0, c_white, 1)

draw_text(player.x, player.y-32, string(player.hp))