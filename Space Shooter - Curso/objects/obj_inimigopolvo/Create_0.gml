//randomize();
image_xscale = 1;
image_yscale = 1;
cores = choose(c_red, c_lime, c_aqua, c_white);
pontos = 10;

// Me destruindo se estou colidindo com alguém
if (place_meeting(x, y, obj_inimigopolvo)) {
	instance_destroy();	
}

atirando = function() {
	if (y >= 0) {
		
		instance_create_layer(x - 3, y + sprite_height / 2 + 30, "Tiro", obj_tiropolvo)
		
	}		
}

vspeed = 2;

alarm[0] = room_speed * random_range(1, 3);


