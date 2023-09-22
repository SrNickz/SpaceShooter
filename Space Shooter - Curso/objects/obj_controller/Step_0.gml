if (!instance_exists(obj_player) && gameover_seq == noone) {
	// Criando minha sequencia
	// Criando apenas uma sequência
	gameover_seq = layer_sequence_create("Sequences", room_width / 2, room_height / 2, sq_gameover);
}


