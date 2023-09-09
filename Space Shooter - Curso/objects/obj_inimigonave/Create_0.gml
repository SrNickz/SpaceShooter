/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
event_inherited();

chance = 30;

//speed = 3;

pontos = 20;
// Criando minha variavel de controle para saber se posso me mover para os lados
pode_se_mover_para_lado = true;

// Criando a função de tiro 2

atirando = function() {
	if (y > 0) {
		
		instance_create_layer(x - 3, y + sprite_height / 3, "Tiro", obj_tiro_inimigo_nave);
		
	}		
}
