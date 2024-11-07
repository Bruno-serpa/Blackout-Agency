if(global.dlg_jogo == true){
	if (inicializar == true) {
    var _guil = display_get_gui_width();
    var _guia = display_get_gui_height();

    var _xx = 0;
    var _yy = _guia - 150; // Diminuindo a altura da posição do retângulo
    var _c = c_black; // Usando c_black e controlando transparência com alpha

    // Desenha o fundo com transparência (aplicando alpha)
    draw_set_alpha(0.7);
    draw_rectangle_color(_xx + 100, _yy, _guil - 100, _guia - 50, _c, _c, _c, _c, false);

    // Ajusta a posição do texto do nome
    draw_set_font(ft_interacoes);
	draw_set_color(make_color_rgb(0, 255, 0));
    draw_text(_xx + 132, _yy + 15, texto_grid[# infos.Nome, pagina]); // Posiciona mais para cima

    // Ajusta a posição do texto principal
    draw_set_font(ft_interacoes);
	draw_set_color(c_white);
    draw_text_ext(_xx + 132, _yy + 40, texto_grid[# infos.Textos, pagina], 32, _guil - 264);

    // Desenha o ícone
    if (global.controleConectado) {
        // Caso controle
		draw_sprite_ext(spr_xbox_a, -1, _guil - 150, _guia - 75, 0.5, 0.5, 0, c_white, 1);
    } else {
        // Caso teclado
		draw_sprite_ext(spr_teclado_f, -1, _guil - 150, _guia - 75, 0.5, 0.5, 0, c_white, 1);
    }

    // Resetenado a fonte e alpha
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_set_font(-1);
}

} else {
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
			draw_sprite(spr_teclado_f, -1, _guil - 250, (display_get_gui_height() - 40));
		}
	
		// Resetenado a fonte
		draw_set_color(c_white); 
	    draw_set_font(-1); 
	}
}