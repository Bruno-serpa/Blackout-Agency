function scr_textos(){
	switch npc_nome{
		case "Primeiro texto":
			ds_grid_add_text("Primeiro texto", "Personagem 01");
			ds_grid_add_text("Segundo texto", "Personagem 01");
			ds_grid_add_text("Terçeiro texto", "Personagem 01");
			ds_grid_add_text("Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto Quarto texto ", "Personagem 01");
			break;
		case "Quadro":
			ds_grid_add_text("Primeiro Quadro", "");
			ds_grid_add_text("Segundo Quadro", "");
			ds_grid_add_text("Terçeiro Quadro", "");
			ds_grid_add_text("Quarto Quadro", "");
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