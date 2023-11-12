//if (image_xscale && image_yscale > 1)	{
	
//	image_xscale -= .2;
//	image_yscale -= .2;	
	
//}

if (instance_exists(obj_boss) && obj_boss.estado_atual == "estado 2")
{
	forca_da_onda = 7;
}
else
{
	forca_da_onda = 35;	
}

x = xstart + (sin(current_time / 100) * forca_da_onda);

y += velv;
image_xscale = lerp(image_xscale, 1, .2);
image_yscale = lerp(image_yscale, 1, .2);


