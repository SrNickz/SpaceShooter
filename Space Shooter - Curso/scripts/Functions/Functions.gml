// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake){
	var _screen = instance_create_layer(0, 0, "Escudo", obj_screenshake);
	_screen.shake = _shake;
}

// Função para ganhar pontos

function ganhando_pontos(_pontos) {
		if (instance_exists(obj_controller)) {
			obj_controller.ganha_pontos(_pontos);
		}
}

// Destruindo a sequencia
function destroi_seq()
{
	// Tentando pegar a sequência da minha layer 
	var _elementos = layer_get_all_elements("Entrada_Boss");
	layer_sequence_destroy(_elementos[0]);
	
	// Criando o boss 
	instance_create_layer(960, 290, "Boss", obj_boss);
}

function cria_seq_vitoria()
{
	if(instance_exists(obj_player))
	{
		layer_sequence_create("Vitoria_Player", obj_player.x, obj_player.y - 300, sq_levelend);
		instance_destroy(obj_player, false);
	}
}