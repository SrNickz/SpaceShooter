vel = 5
espera_tiro = room_speed / obj_controller.level;
level_tiro = 1;

// Criando um método

atirando = function()	{
	
	var _fire = keyboard_check(vk_space);
	
	var y_tiro = y - sprite_height / 2 - 30;
	
	if (_fire && alarm[0] == -1) {
		//Ativando o alarme para garantir que o codigo vai esperar 1s
		alarm[0] = espera_tiro;		
	
		// Criar o tiro na hora que apertei espaço
		// E só atirar novamente depois de 1s 
		// Meu código de criar o tiro
		
		if (level_tiro == 1) {
			instance_create_layer(x, y_tiro, "Tiro", obj_tiro_player);	
		}
		else if	(level_tiro == 2) {
			tiro2();
		}
		else if	(level_tiro == 3) {
			instance_create_layer(x, y_tiro, "Tiro", obj_tiro_player);	
			tiro2();
		}
	}	
}

// Método para criar o tiro 2
tiro2 = function() {
		var y_tiro = y - sprite_height / 2 - 30;
		// Criando o segundo tiro da asa esquerda
		// Fazendo o tiro da esquerda ir para a direita
		var tiro_1 = instance_create_layer(x - 70, y_tiro + 30, "Tiro", obj_tiro_player_2);	
		// Mandando o tiro 1 ir para a esquerda
		tiro_1.hspeed = -5
			
		// Criando o segundo tiro da asa direita
		var tiro_2 = instance_create_layer(x + 70, y_tiro + 30, "Tiro", obj_tiro_player_2);
		tiro_2.hspeed = 5
}
	