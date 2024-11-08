var confim = (keyboard_check_released(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));

if (global.morreu >= 2 and global.chavesala == false) {
    mostrar_icone = true;
} else {
    mostrar_icone = false;
}
if(global.morreu >= 2 and confim){
	global.chavesala = true;
	mostrar_icone = false;
}