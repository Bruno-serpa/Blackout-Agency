var confim = (keyboard_check(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face1));

if(confim){
	room_goto(Quarto);
}