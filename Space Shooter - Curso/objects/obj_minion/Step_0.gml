/// @description Insert description here
// You can write your code in this editor

// Se eu ainda não estou visível e meu alarm ainda não rodou
if(image_alpha < 1 && alarm_rodou == 0)
{
	image_alpha += 1 / room_speed;	
}



if (escala >= 1.2 || escala <= .6) 
{
	aumento_escala *= -1;	
}

escala += aumento_escala;
show_debug_message(vida);















