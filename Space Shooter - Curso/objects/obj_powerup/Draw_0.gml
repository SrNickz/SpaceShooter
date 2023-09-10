draw_self()

// Desenhando o brilho

// Alterando como o video trata as cores
gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_polvo, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, cor, image_alpha - .5); 

// Voltando ao normal
gpu_set_blendmode(bm_normal);