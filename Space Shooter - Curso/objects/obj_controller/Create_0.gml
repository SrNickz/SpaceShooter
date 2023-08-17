// Iniciando
alarm[0] = room_speed;

// Iniciando o sistema de pontos
pontos = 0; 

// iniciando o sistema de leveis
level = 1;

// Quantos pontos eu preciso para o proximo level
proximo_level = 100;
// Criando um metodo para ganhar pontos 

///@method ganha_pontos(pontos)
ganha_pontos = function(_pontos) {
	pontos += _pontos;	
	
	// Ganhando level SE os pontos forem maiores do que o proximo nivel
	if (pontos >= proximo_level) {
		level += 1;
		proximo_level *= 2;
	}
}

// Criando o método para criar inimigos

cria_inimigos = function() {
	var _xx, _yy
	var inimigo = obj_inimigopolvo
	var chance = random_range(0, level)
	
	_xx = random_range(110, 1810);
	_yy = random_range(-1000, -110);

	// Criando o inimigo com base no level
	// A chance no inimigo mais forte depende do level
	// Se o valor da chance for maior do que 2
	if (chance > 2) {
		inimigo = obj_inimigonave;
	}


	instance_create_layer(_xx ,_yy, "Inimigos", inimigo);

}