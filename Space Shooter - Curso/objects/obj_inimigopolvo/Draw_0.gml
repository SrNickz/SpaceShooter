draw_self()

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_olho, image_index, x + 4, y - 1, image_xscale * .9 , image_yscale * .9, image_angle, cores, .5);
gpu_set_blendmode(bm_normal);


