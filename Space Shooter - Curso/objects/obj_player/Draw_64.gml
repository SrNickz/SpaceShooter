/// @description Insert description here
// You can write your code in this editor

//var _altura_gui = display_get_gui_height()
var _x_da_gui = 40;
_cores_da_vida();


// Desenhando naves para serem as vidas
repeat(vida) {
	draw_sprite_ext(spr_player, 0, _x_da_gui, 40, image_xscale * .3, image_yscale * .3, image_angle, cores_vidas, 1);
	_x_da_gui += 40;
}

// Desenhando escudos para representar a quantidade de escudos
_x_da_gui = 40;
repeat(qtd_escudos) {
	draw_sprite_ext(spr_escudo, 2, _x_da_gui, 90, image_xscale * .25, image_yscale * .25, image_angle, image_blend, .7);
	_x_da_gui += 40;
}


















