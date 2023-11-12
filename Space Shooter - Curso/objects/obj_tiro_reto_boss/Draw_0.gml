draw_self()

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_polvo, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, cores, .5);
gpu_set_blendmode(bm_normal);

