
image_xscale = .5;
image_yscale = .5;


// Criando o método pra minha explosão se destruir
cores = choose(c_aqua, c_red, c_purple);

me_destruir = function()	{	
	if (image_index == 7)
	{
		instance_destroy();	
	}	
}




