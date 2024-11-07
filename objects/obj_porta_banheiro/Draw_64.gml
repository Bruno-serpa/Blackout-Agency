if (mostrar_icone) {
    // Pega a posição da câmera
    var cam_x = camera_get_view_x(view_camera[VIEW]);
    var cam_y = camera_get_view_y(view_camera[VIEW]);
	var escala = 0.6;
    
    // Calcula a posição do objeto
    var centro_x = (x - cam_x) * VIEW_SCALE;
    var centro_y = (y - cam_y) * VIEW_SCALE;

    // Desenha o ícone
	if(global.controleConectado){
		draw_sprite_ext(spr_xbox_x, -1, centro_x - ((sprite_get_width(spr_xbox_x) / 14)), centro_y - 12, escala, escala, 0, c_white, 1);
	} else{
		draw_sprite_ext(spr_teclado_e, -1, centro_x - ((sprite_get_width(spr_teclado_e) / 14)), centro_y - 12, escala, escala, 0, c_white, 1);
	}
	// Desenha o texto
	draw_set_font(ft_interacoes);
	draw_text_transformed(centro_x - ((string_width(nome) / 2)) + 18, centro_y + 10, nome, escala, escala, 0);

	
	// Resetenado a fonte
	draw_set_color(c_white); 
    draw_set_font(-1); 
}
