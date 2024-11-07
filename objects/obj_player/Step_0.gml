// ------------------------------------------- Teclas -------------------------------------------
	
var zonaMorta = 0.20;
gamepad_set_axis_deadzone(global.controle, zonaMorta);

var cima = (keyboard_check(vk_up)) or (gamepad_button_check(global.controle, gp_padu)) or (keyboard_check(ord("W"))) or (gamepad_axis_value(global.controle, gp_axislv) < -zonaMorta);
var baixo = (keyboard_check(vk_down)) or (gamepad_button_check(global.controle, gp_padd)) or (keyboard_check(ord("S"))) or (gamepad_axis_value(global.controle, gp_axislv) > zonaMorta);
var direita = (keyboard_check(vk_right)) or (gamepad_button_check(global.controle, gp_padr)) or (keyboard_check(ord("D"))) or (gamepad_axis_value(global.controle, gp_axislh) > zonaMorta);
var esquerda = (keyboard_check(vk_left)) or (gamepad_button_check(global.controle, gp_padl)) or (keyboard_check(ord("A"))) or (gamepad_axis_value(global.controle, gp_axislh) < -zonaMorta);
var confim = (keyboard_check(ord("E"))) or (gamepad_button_check_pressed(global.controle, gp_face3));

// ------------------------------------------- Movimentação -------------------------------------------
	
if(global.dialogo == false){
	// Verificar se astá apertando alguma tecla
if(direita xor esquerda)
{
	// Verificar a direção em graus°
	dir = point_direction(0, 0, direita-esquerda, baixo-cima);
	
	// Aplicando velocidade
	velH = lengthdir_x(velocidade, dir);
		
	// Add Colisão na horizontal
	if(place_meeting(x+velH, y, obj_colisao)){
		while(!place_meeting(x+sign(velH), y, obj_colisao)){
			x = x + sign(velH);
		}
		velH = 0;
	}
	
	// Add Colisão na horizontal sem efeito de camera
	if(place_meeting(x+velH, y, obj_colisao_sem_mod_camera)){
		while(!place_meeting(x+sign(velH), y, obj_colisao_sem_mod_camera)){
			x = x + sign(velH);
		}
		velH = 0;
	}
		
	// Fazendo o personagem se mover
	x+= velH;
	state = "walk";
}else{
	// Deixar ele parado
	velH = 0;
	state = "idle";
}
}

// ------------------------------------------- Maquina de estado -------------------------------------------

if(global.dialogo == false){	
	switch(state){
		// Caso esteja parado
		case "idle":
			// Direita
			if(Ultimo_state == 0){
				sprite_index = spr_alice_idle_direita;
			}
			// Esquerda
			if(Ultimo_state == 180){
				sprite_index = spr_alice_idle_esquerda;
			}
		break;
		
		// Caso esteja andando
		case "walk":
			// Direita
			if(dir == 0){
				sprite_index = spr_alice_walk_direita;
				Ultimo_state = 0;
			}
			// Esquerda
			if(dir == 180){
				sprite_index = spr_alice_walk_esquerda;
				Ultimo_state = 180;
			}
			// Diagonal superior direita
				if(dir == 45){
					sprite_index = spr_alice_walk_direita;
					Ultimo_state = 0;
				}
				// Diagonal superior esquerda
				if(dir == 135){
					sprite_index = spr_alice_walk_esquerda;
					Ultimo_state = 180;
				}
				// Diagonal inferior direita
				if(dir == 315){
					sprite_index = spr_alice_walk_direita;
					Ultimo_state = 0;
				}
				// Diagonal inferior esquerda
				if(dir == 225){
					sprite_index = spr_alice_walk_esquerda;
					Ultimo_state = 180;
				}
		break;		
		
		default:
			image_index = 0;
		break;
	}
} else {
	switch(state){
		// Caso esteja parado
		case "idle":
			// Direita
			if(Ultimo_state == 0){
				sprite_index = spr_alice_idle_direita;
			}
			// Esquerda
			if(Ultimo_state == 180){
				sprite_index = spr_alice_idle_esquerda;
			}
		break;
		
		// Caso esteja andando
		case "walk":
			// Direita
			if(dir == 0){
				sprite_index = spr_alice_idle_direita;
				Ultimo_state = 0;
			}
			// Esquerda
			if(dir == 180){
				sprite_index = spr_alice_idle_esquerda;
				Ultimo_state = 180;
			}
			// Diagonal superior direita
				if(dir == 45){
					sprite_index = spr_alice_idle_direita;
					Ultimo_state = 0;
				}
				// Diagonal superior esquerda
				if(dir == 135){
					sprite_index = spr_alice_idle_esquerda;
					Ultimo_state = 180;
				}
				// Diagonal inferior direita
				if(dir == 315){
					sprite_index = spr_alice_idle_direita;
					Ultimo_state = 0;
				}
				// Diagonal inferior esquerda
				if(dir == 225){
					sprite_index = spr_alice_idle_esquerda;
					Ultimo_state = 180;
				}
		break;
		
		default:
			image_index = 0;
		break;
	}
}

// ------------------------------------------- Dialogo -------------------------------------------

if (distance_to_object(obj_item) <= 10){
	if(confim){
		var _npc = instance_nearest(x, y, obj_item);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
		_dialogo.npc_nome = _npc.nome;
	}
}















