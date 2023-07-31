//randomize();

atirando = function() {
	if (y >= 0) {
	instance_create_layer(x - 3, y + sprite_height / 2 + 30, "Tiro", obj_tiropolvo)
	}		
}
vspeed = 2;

alarm[0] = room_speed * random_range(1, 3);


