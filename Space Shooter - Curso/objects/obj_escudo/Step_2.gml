// Se o alvo for noone, se mata
if (!alvo) { // Não tiver alvo 
	instance_destroy(); 	
}

// Vou ficar na mesma posição que o player

if (instance_exists(alvo)) {
	x = alvo.x;
	y = alvo.y;
}
else {
	instance_destroy();	
}