var _guil = display_get_gui_width();
var _guia = display_get_gui_height();

// Desenha os textos
draw_set_font(ft_interacoes);
draw_text( _guil - 185, (display_get_gui_height() - 50), "Continuar");
	
// Desenha o ícone
if(global.controleConectado){
	// Caso controle
	draw_sprite(spr_xbox_a, -1, _guil - 50, (display_get_gui_height() - 40));
} else {
	// Caso teclado
	draw_sprite(spr_teclado_e, -1, _guil - 50, (display_get_gui_height() - 40));
}

// Resetenado a fonte
draw_set_color(c_white); 
draw_set_font(-1)