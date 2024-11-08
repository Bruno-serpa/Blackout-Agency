var confim = (keyboard_check_released(ord("F"))) or (gamepad_button_check_pressed(global.controle, gp_face1));

if(inicializar == false){
	scr_textos();
	inicializar = true;
}

if(confim){
	if(pagina < ds_grid_height(texto_grid) - 1){
		pagina++;
	} else {
		global.dialogo = false;
		instance_destroy();
	}
}