var centro_x = room_width / 2;
var centro_y = room_height / 2;

// Verifica se existe uma instância do ícone e a destrói
if (instance_exists(obj_controles_xbox)) {
    with (obj_controles_xbox) {
        instance_destroy();
    }
}

if (instance_exists(obj_controles_teclado)) {
    with (obj_controles_teclado) {
        instance_destroy();
    }
}

// Cria o ícone na camada "Controles", dependendo do tipo de controle conectado
if(global.controleConectado){
    // Caso controle
    instance_create_layer(0, 0, "Controles", obj_controles_xbox);
} else {
    // Caso teclado
    instance_create_layer(centro_x, centro_y, "Controles", obj_controles_teclado);
}
