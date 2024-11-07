if(inicializar == true){
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;

	// Desenha o fundo
	draw_rectangle_color(_xx + 200, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
	
	// Desenha o nome
	draw_set_font(ft_menu);
	draw_text(_xx + 232, _yy + 20, texto_grid[# infos.Nome, pagina]);
	
	// Desenha os textos
	draw_set_font(ft_interacoes);
	draw_text_ext(_xx + 232, _yy + 60, texto_grid[# infos.Textos, pagina], 32, _guil - 464);
	
	// Desenha o ícone
	if(global.controleConectado){
		// Caso controle
		draw_sprite(spr_xbox_a, -1, _guil - 250, (display_get_gui_height() - 40));
	} else {
		// Caso teclado
		draw_sprite(spr_teclado_e, -1, _guil - 250, (display_get_gui_height() - 40));
	}
	
	// Resetenado a fonte
	draw_set_color(c_white); 
    draw_set_font(-1); 
}