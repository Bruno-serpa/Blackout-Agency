// Define a posição no canto inferior direito
var x_pos = display_get_gui_width() - 36;
var y_pos = display_get_gui_height() - 36;

// Desenha o objeto com rotação no canto inferior direito
draw_sprite_ext(spr_carregando, 0, x_pos, y_pos, 1, 1, rotation, c_white, 1);
