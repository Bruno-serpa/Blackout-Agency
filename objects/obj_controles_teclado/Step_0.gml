var confim = (keyboard_check(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face1));

// Começar o jogo
if(confim and global.origem == 0){
	room_goto(Quarto);
}

// Voltar para o menu
if(confim and global.origem == 1){
	room_goto(Menu);
}