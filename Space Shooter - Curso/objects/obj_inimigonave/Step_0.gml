/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

// Se meu y é maior que 1/3 da altura da room
if (y > room_height / 3)	{
	
	// Se meu x é maior que a largura da room dividida por 2 (direita)
	if (x > room_width / 2) {  
	
		show_debug_message("To na direita!")
		hspeed = -3;
	
	}
	// Senão, meu x é menor que a largura da room dividida por 2 (esquerda)
	else	{
	
		show_debug_message("To na esquerda!")
		hspeed = 3;

	}
	
}