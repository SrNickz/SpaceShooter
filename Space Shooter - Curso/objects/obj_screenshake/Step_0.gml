// Movendo a tela

view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

// Diminuindo o valor do screenshake

shake *= .85;


// Se o valor do shake for menor que .05, ele se destroi

if (shake <= .05) {
	instance_destroy();	
}





















