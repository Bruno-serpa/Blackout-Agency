var confim = (keyboard_check_released(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));


if (distance_to_object(obj_player) <= distancia_ativacao) {
    mostrar_icone = true;
} else {
    mostrar_icone = false;
}
if((distance_to_object(obj_player) <= distancia_ativacao) and confim){
	global.VIEW_WIDTH =  228;
	global.VIEW_HEIGHT = 128;
	global.ult_sala = 8;
	room_goto(Sala);
}