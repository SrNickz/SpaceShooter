vel = 5;

// Criando um método

atirando = function()	{
	var _fire = keyboard_check_pressed(vk_space);
	if (_fire)	{
		instance_create_layer(x, y - sprite_height / 2 - 30, "Tiro", obj_tiro_player);
	}	
}