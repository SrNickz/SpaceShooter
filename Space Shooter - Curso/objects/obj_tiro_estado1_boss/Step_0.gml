//if (image_xscale && image_yscale > 1)	{
	
//	image_xscale -= .2;
//	image_yscale -= .2;	
	
//}
x = xstart + (sin(current_time / 100) * forca_da_onda);

y += velv;
image_xscale = lerp(image_xscale, 1, .2);
image_yscale = lerp(image_yscale, 1, .2);


