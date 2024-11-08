var confim = (keyboard_check_released(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));


if (distance_to_object(obj_player) <= distancia_ativacao) {
    mostrar_icone = true;
} else {
    mostrar_icone = false;
}
if((distance_to_object(obj_player) <= distancia_ativacao) and confim){
	global.quartop = true;
	if(global.ult_sala == 1){
		global.ult_sala_qb = 0;
	}
	if(global.ult_sala == 2){
		global.ult_sala_qb = 2;
	}
	if(global.ult_sala == 3){
		global.ult_sala_qb = 6;
	}
	room_goto(Corredor);
}