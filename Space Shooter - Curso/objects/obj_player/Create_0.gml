// Velocidade - .05		- Limite = 10 // 45%
// Espera Tiro - 10%	- Limite = 20 // 45%
// Level Tiro - 1		- Limite = 5  // 10%



vel = 5;
espera_tiro = room_speed / obj_controller.level;
level_tiro = 1;

// Sistema de vida
vida = 3;

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
		// Tiro do level 4
		else if (level_tiro == 4) {
			tiro4()
			}
		// Tiro do level 5
		else if (level_tiro == 5) {
			tiro4();
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

// Método para criar o tiro 4
tiro4 = function() {
		var y_tiro = y - sprite_height / 2 - 30;
		var direcao = 75
		repeat(3) {
			var meu_tiro = instance_create_layer(x, y_tiro + 10, "Tiro", obj_tiro_player);	
			// Definir a direção dele
			meu_tiro.direction = direcao;
			// Fazer meu tiro olhar para onde ele está indo
			meu_tiro.image_angle = meu_tiro.direction - 90;
			// Aumento minha direção em 15 
			direcao += 15;
	}
}	

///@method upgrade(chance)
upgrade = function(_chance) 
{
	if (_chance >= 90)
	{
		// Aumentando o level do tiro SE o level do tiro for menor do que 5
		if (level_tiro < 5) 
		{
			level_tiro++;
		}
	}
	else if (_chance >= 45)
	{
		// Checando se a espera do tiro é maior do que 20 
		if (espera_tiro > 20)
		{
			// Diminuindo a espera do tiro em 10%
			espera_tiro *= 0.9
		}
	}
	else
	{
		// Aumentando a vel em .5 se ela for menor do que 10
		if (vel < 10)
		{
			vel += .5	
		}
	}
}

// Método para perder vida

///@method perde_vida();

function perde_vida() {
	if (vida > 1) {
		vida -= 1;	
	}
	else {
		instance_destroy()	
	}
}
	