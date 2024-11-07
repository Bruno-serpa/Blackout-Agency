var confim = (keyboard_check(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));

if(global.dialogo == false and global.pegoulista == false){
	mostrar_icone = true;
}

if((distance_to_object(obj_player) <= distancia_ativacao) and confim){
	mostrar_icone = false;
	global.pegoulista = true;
}
