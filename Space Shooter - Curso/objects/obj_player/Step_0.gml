var _right, _up, _left, _down, _fire

_right	= keyboard_check(ord("D"));
_left	= keyboard_check(ord("A"));
_up		= keyboard_check(ord("W"));
_down	= keyboard_check(ord("S"));
_fire	= keyboard_check_pressed(vk_space);

// Movimentação
x += (_right - _left) * vel;
y += (_down - _up) * vel

// Convertendo em um método
// Atirando
if (_fire)
{
	instance_create_layer(x, y - sprite_height / 2 - 30, "Tiro", obj_tiro_player);
}


