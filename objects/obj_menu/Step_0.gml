//----------------------------------- Alterar opção ----------------------------------------------

// teclas de movimentação do menu
var zonaMorta = 0.20; // Configurando zona morta do controle
gamepad_set_axis_deadzone(global.controle, zonaMorta);

// quando não está pressionando
var cima = (keyboard_check_pressed(vk_up)) or (gamepad_button_check_pressed(global.controle, gp_padu)) or (keyboard_check_pressed(ord("W")));
var baixo = (keyboard_check_pressed(vk_down)) or (gamepad_button_check_pressed(global.controle, gp_padd)) or (keyboard_check_pressed(ord("S")));
var click = (keyboard_check_pressed(vk_enter)) or (mouse_check_button_pressed(mb_left)) or (gamepad_button_check_pressed(global.controle, gp_face1)) or (keyboard_check_released(ord("E")));

// Lógica para navegação usando teclado
if (cima && select > 0) { // Permite navegação para cima
    select--;
} else if (baixo && select < array_length(menu) - 1) {
    select++;
}

// Lógica para garantir que a seleção não exceda o intervalo
if (select < -1) {
    select = -1; // Mantém como não selecionado
} else if (select >= array_length(menu)) {
    select = array_length(menu) - 1; // Mantém dentro dos limites
}

// Tratamento dos cliques
switch (select) {
    // Novo
    case 0:
        if (click) {
			global.origem = 0;
			audio_stop_all();
			audio_play_sound(aud_geral, 1, true);
            room_goto(Controles);
        }
        break;
    // Controles
    case 1:
        if (click) {
            // Lógica de controles
			global.origem = 1;
			room_goto(Controles);
        }
        break;
    // Sair do jogo
    case 2:
        if (click) {
            game_end();
        }
        break;
    default:
        break;
}