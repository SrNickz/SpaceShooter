/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

// Mudando a direção após me mover X pixels
// Achar uma forma de ver qual a posição inicial
// Checando se andei 50 pixels para a direita

if (x > xstart + 50 || x < xstart - 50) {
	// Eu inverto minha vel horizontl
	hspeed *= -1;
}
