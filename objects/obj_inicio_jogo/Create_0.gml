event_inherited();

nome = "inicio jogo"
pode = false;

var _npc = instance_nearest(x, y, obj_item);
var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo);
_dialogo.npc_nome = _npc.nome;
global.dialogo = true

alarm[0] = 10;