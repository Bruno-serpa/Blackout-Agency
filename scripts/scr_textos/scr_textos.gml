function scr_textos(){
	switch npc_nome{
		case "inicio jogo":
			ds_grid_add_text("Tudo começou como um dia normal.", "Alice");
			ds_grid_add_text("E ainda me lembro de acordar e achar que conseguiria sair de casa hoje...", "Alice");
			break;		
		case "acordou":
			ds_grid_add_text("aaahh... *Bocejo*", "Alice");
			ds_grid_add_text("Tem que ir comprar uma cadeira gamer com rgb.", "Alice");
			ds_grid_add_text("Vou lá pra sala vê se eu acho a chave.", "Alice");
			ds_grid_add_text("Lembro que deixei ela em algum luga lá...", "Alice");
			break;
		case "estante":
			ds_grid_add_text("Apenas minha estante de livros.", "Alice");
			ds_grid_add_text("A chave não deve está aqui", "Alice");
			break;
		case "espelho":
			ds_grid_add_text("Porque não consigo vê meu reflexo?", "Alice");
			break;
		case "pb":
			ds_grid_add_text("Não tenho motivos para entrar aí", "Alice");
			break;
		case "morreu1":
			ds_grid_add_text("OQUEE!!!!", "Alice");
			ds_grid_add_text("EU...", "Alice");
			ds_grid_add_text("LEVEI UM TIROO", "Alice");
			ds_grid_add_text("Como ainda estou viva??", "Alice");
			ds_grid_add_text("E como levei um tiro na minha própria casa??", "Alice");
			ds_grid_add_text("Porquer será que estou no quarto?? lembro que o tiro veio da sala", "Alice");
			ds_grid_add_text("Agora que me lembrei, a chave do banheiro estava de baixo da mesa com pano verde na sala", "Alice");
			ds_grid_add_text("Eu tenho que pega-la a tempo de não levar o tiro novamente", "Alice");
			break;
		case "morreu2":
			ds_grid_add_text("Eu morri novamente!!!", "Alice");
			ds_grid_add_text("EU...", "Alice");
			ds_grid_add_text("tentei...", "Alice");
			ds_grid_add_text("AHH!", "Alice");
			ds_grid_add_text("Agora me lembrei!!", "Alice");
			ds_grid_add_text("Eu deixei a chave da sala cair na banheira do banheiro.", "Alice");
			break;
		case "banheiro":
			ds_grid_add_text("O banheiro está trancado.", "Alice");
			ds_grid_add_text("Preciso encontrar a chave.", "Alice");
			break;
		case "psala":
			ds_grid_add_text("Essa é a porta para fora.", "Alice");
			ds_grid_add_text("Porem não lembro onde coloquei a chave dela.", "Alice");
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