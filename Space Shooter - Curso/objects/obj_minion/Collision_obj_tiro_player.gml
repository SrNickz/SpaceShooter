/// @description Insert description here
// You can write your code in this editor

if (vida > 0)
{
	vida--;
	image_alpha -= .08;
	// Aumentando o valor do aumento da escala em 30%
	aumento_escala *= 1.3;
}
else
{
	instance_destroy();
}
instance_destroy(other);
screenshake(5)























