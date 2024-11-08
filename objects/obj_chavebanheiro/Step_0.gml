var confim = (keyboard_check_released(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));

if (global.morreu >= 1 and global.chavebanheiro == false) {
    mostrar_icone = true;
} else {
    mostrar_icone = false;
}
if(global.morreu >= 1 and confim){
	global.chavebanheiro = true;
	mostrar_icone = false;
}