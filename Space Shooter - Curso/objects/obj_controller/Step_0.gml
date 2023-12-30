if (pode_criar_gameover == true && !instance_exists(obj_player) && gameover_seq == noone) {
	// Criando minha sequencia
	// Criando apenas uma sequência
	gameover_seq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);
	pode_criar_gameover = false;
}

if(level >= 10)
{
	level = 10;	
}
