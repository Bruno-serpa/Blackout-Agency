if(inicializar == true){
	var _guil = display_get_gui_width();
	var _guia = display_get_gui_height();

	var _xx = 0;
	var _yy = _guia - 200;
	var _c = c_black;

	draw_set_font(ft_interacoes);
	draw_rectangle_color(_xx + 200, _yy, _guil - 200, _guia, _c, _c, _c, _c, false);
	draw_text_ext(_xx + 232, _yy + 60, texto_grid[# infos.Textos, pagina], 32, _guil - 464);
	draw_set_font(ft_interacoes);
	draw_text(_xx + 232, _yy + 20, texto_grid[# infos.Nome, pagina]);
	
	// Resetenado a fonte
	draw_set_color(c_white); 
    draw_set_font(-1); 
}