gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_polvo, image_index, x, y, image_xscale * 1.5, image_yscale * 1.5, image_angle, c_aqua, .3);
gpu_set_blendmode(bm_normal);

draw_self();








