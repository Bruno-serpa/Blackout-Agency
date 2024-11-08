//------------------------------------------- Menu --------------------------------------------------

// Itens do menu
menu = ["Novo", "Controles", "Sair"];

// Seleção do menu
select = -1; // Começar com nenhuma seleção

mouseSobreItem = false;
global.dlg_jogo = false;
global.morreu = false;
global.ult_sala = 0;
global.ult_sala_qb = 0;

// Colocando o jogo em fullscreen
window_set_fullscreen(true);