//randomize();
image_xscale = 1;
image_yscale = 1;
vspeed = 2;

cores = choose(c_red, c_lime, c_aqua, c_white);

// Chance de droppar o item = 20%
chance = 20;

pontos = 10;

alarm[0] = room_speed * random_range(1, 3);

// Me destruindo se estou colidindo com alguém
if (place_meeting(x, y, obj_inimigopolvo)) {
	instance_destroy();	
}

function atirando() {
	if (y >= 0) {
		
		instance_create_layer(x - 3, y + sprite_height / 2 + 30, "Tiro", obj_tiropolvo)
		
	}		
}

///@method dropa_item(chance_de_dropar_em_porcentagem)
function dropa_item(_chance) 
{	
	var valor = random(100);
	
	// Se o valor for menor que a chance, ele cria o item 
	if (valor < _chance)
	{
		// Criando o item
		instance_create_layer(x, y, "Tiro", obj_powerup);
	}
}





