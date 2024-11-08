event_inherited();

pode = false;

if(global.morreu == 1 and global.ult_sala ==0){
	nome = "morreu1"
	var _npc = instance_nearest(x, y, obj_item);
	var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
	global.dlg_jogo = true
}

if(global.morreu == 2  and global.ult_sala == 0){
	nome = "morreu2"
	var _npc = instance_nearest(x, y, obj_item);
	var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
	global.dlg_jogo = true
}

if(global.ult_sala == 1){
	obj_player.x = x + 230;
}

if(global.quartop == false and global.morreu == 0 and global.ult_sala ==0){
	nome = "acordou"
	var _npc = instance_nearest(x, y, obj_item);
	var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
	_dialogo.npc_nome = _npc.nome;
	global.dialogo = true
	global.dlg_jogo = true
}