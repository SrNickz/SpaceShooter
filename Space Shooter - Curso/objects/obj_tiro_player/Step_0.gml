/// @description Insert description here
// You can write your code in this editor

////SE a escala x e y da minha sprite for maior que 1
//if (image_xscale && image_yscale > 1.75)
//{
//	// Diminuo ela até chegar em 1
//	image_xscale -= .3;
//	image_yscale -= .3;
//}


// Diminuindo a escala do tiro

// LERP é uma função de aproximação, faço um valor x chegar em um valor y por uma porcentagem
// LERP - valor que eu tenho, valor que quero chegar, porcentagem de aproximação

//Step1 = 1 - 10 = 5 - 10
//Step2 = 5 - 10 = 7.5 - 10
//Step3 = 7.5 - 10 = 8.75 - 10

image_xscale = lerp(image_xscale, 1.25, .2);
image_yscale = lerp(image_yscale, 1.25, .2);

