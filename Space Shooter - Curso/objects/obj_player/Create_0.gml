// Velocidade - .05		- Limite = 10 // 45%
// Espera Tiro - 10%	- Limite = 20 // 45%
// Level Tiro - 1		- Limite = 5  // 10%

vel = 5;
espera_tiro = room_speed / 3;
level_tiro = 1;
qtd_escudos = 3;
cores_vidas = noone;
meu_escudo = noone;

// Sistema de vida
vida = 3;

#region Sistema de tiros / Escudo
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
	
function cria_escudo() 
{
	var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	// Eu sou seu alvo
   	_escudo.alvo = id;
	qtd_escudos -= 1;
	meu_escudo = _escudo;	
}

#endregion

///@method upgrade(chance)
upgrade = function(_chance) 
{
	if (_chance >= 90) // LEVEL TIRO
	{
		// Aumentando o level do tiro SE o level do tiro for menor do que 5
		
		if (level_tiro < 5) 
		{
			level_tiro++;
		}
		else {
			ganhando_pontos(100);
		}
	}
	else if (_chance >= 45) // ESPERA TIRO
	{
		// Checando se a espera do tiro é maior do que 20 
		if (espera_tiro > 15)
		{
			// Diminuindo a espera do tiro em 10%
			espera_tiro *= 0.9
		}
		else {
			ganhando_pontos(10);	
		}
	}
	else // VELOCIDADE PLAYER
	{ 
		// Aumentando a vel em .5 se ela for menor do que 10
		if (vel < 10)
		{
			vel += .5	
		}
	}
}

#region Sistema de vidas

// Método para perder vida

///@method perde_vida();
function perde_vida() {
	if (!meu_escudo) {
		if (vida > 1) {
			vida -= 1;	
			screenshake(50);
		}
		else {
			screenshake(80);
			instance_destroy()	
		}
	}
}
	
// Método pra mudar a cor das vidas
///@method _cores_da_vida();
function _cores_da_vida() {
	if (vida == 3) {
		cores_vidas = c_white;	
	}
	else if (vida == 2) {
		cores_vidas = c_orange;	
	}
	else {
		cores_vidas = c_red;	
	}
	
}

///@method velocidade_vida();
function velocidade_vida() {
	if (vida == 3)		{
		image_speed = .6;
	}
	else if (vida == 2) {
		image_speed = 1.2;
	}
	else {
		image_speed = 1.7;	
	}
	
}

#endregion
	