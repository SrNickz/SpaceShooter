vel = 5
espera_tiro = room_speed / obj_controller.level;
level_tiro = 1;

// Criando um método

atirando = function()	{
	var _fire = keyboard_check(vk_space);
	if (_fire && alarm[0] == -1) {
		//Ativando o alarme para garantir que o codigo vai esperar 1s
		alarm[0] = espera_tiro;		
	
		// Criar o tiro na hora que apertei espaço
		// E só atirar novamente depois de 1s 
		// Meu código de criar o tiro
		
		if		(level_tiro == 1) {
			instance_create_layer(x, y - sprite_height / 2 - 30, "Tiro", obj_tiro_player);	
		}
		else if (level_tiro == 2) {
			instance_create_layer(x, y - sprite_height / 2 - 30, "Tiro", obj_tiro_player_2);	
		}
	}	
}