image_alpha = lerp(image_alpha, 0, .002)

if (image_alpha <= 0) {
	instance_destroy(id, false);	
}
