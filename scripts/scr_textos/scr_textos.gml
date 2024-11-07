function scr_textos(){
	switch npc_nome{
		case "inicio jogo":
			ds_grid_add_text("Tudo começou como um dia normal.", "Alice");
			ds_grid_add_text("E ainda me lembro de acordar e lê a carta da minha mãe...", "Alice");
			break;		
		case "acordou":
			ds_grid_add_text("aaahh... *Bocejo*", "Alice");
			ds_grid_add_text("Por que ainda estou com sono? Nem fui pra festa ontem a noite", "Alice");
			ds_grid_add_text("Hmmm? Tem algo na mesa. Deve ser da minha mãe, ela ainda não aprendeu a usar celular...", "Alice");
			break;
		case "estante":
			ds_grid_add_text("Apenas minha estante de livros.", "Alice");
			break;
		case "espelho":
			ds_grid_add_text("Porque não consigo vê meu reflexo?", "Alice");
			break;
	}
}

function ds_grid_add_row(){
///@arg ds_grid

var _grid = argument[0];
ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
return(ds_grid_height(_grid)-1);
}

function ds_grid_add_text(){
///@arg Texto
///@arg Nome

var _grid = texto_grid;
var _y = ds_grid_add_row(_grid);

_grid[# 0, _y]  = argument[0]
_grid[# 1, _y]  = argument[1]
}