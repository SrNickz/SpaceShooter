/// @description Insert description here
// You can write your code in this editor

// Estado 1 - Parado dando tiro 2
// Estado 2 - Movendo dando tiro 1
// Estado 3 - Parado intercalando entre tiro 1 e 2

//Estado 4)
// Estado especial 1 - Invencível enquando cria 2 minions para recuperar vida
// Estado especias 2 - Criar 
//randomize();
estado_atual = "estado 2";//choose("estado 1", "estado 2", "estado 3", "estado 4");
delay_tiro = room_speed / 2;
espera_tiro_boss = 0;
velh = 3

// Movimento de onda - seno
y_inicial = y;
forca_da_onda = 65;

#region Métodos - Estados do Boss

function estado_1() 
{
	y = y_inicial + (sin(current_time / 500) * forca_da_onda);
	
	
	// Se o boss estiver em qualquer posição longe do meio, ele volta para o meio suavemente
	if (x != 960)
	{
		x = lerp(x, 960, .03);	
	}
	
	// Códigos do estado 1	
	//Diminuindo a espera do tiro
	espera_tiro_boss -= 1;
	
	// Criando o tiro 2 SE a espera do tiro for menor ou igual a 0
	if (espera_tiro_boss <= 0) 
	{
		instance_create_layer(x, y + 50, "Tiro", obj_tiro_inimigo_nave);
		espera_tiro_boss = delay_tiro; // Quando eu atirar, eu espero (reseto o tempo)
	}	
}

///@method estado_2()
function estado_2()
{
	// Movimento de onda - seno
	y = y_inicial + (sin(current_time / 500) * forca_da_onda);

	// Indo para a direita
	x += velh;
	
	// Invertendo a velh se eu bater na borda
	if (x >= 1632 || x <= 288)
	{
		velh *= -1;	
	}
	
	espera_tiro_boss -= 1;
	if (espera_tiro_boss <= 0)
	{
		// Criando o tiro 1 da esquerda
		instance_create_layer(x - 160, y + 15, "Tiro", obj_tiro_estado1_boss);
		// Criando o tiro 1 da direita
		instance_create_layer(x + 160, y + 15, "Tiro", obj_tiro_estado1_boss);
		espera_tiro_boss = delay_tiro * 2;
	}
	
}	

///@method estado_3()
function estado_3()
{
	y = y_inicial + (sin(current_time / 500) * forca_da_onda);
}	

///@method estado_4()
function estado_4()
{
	y = y_inicial + (sin(current_time / 500) * forca_da_onda);
}	

#endregion

// Iniciando o alarm de troca de estados
alarm[0] = room_speed * 5;


















