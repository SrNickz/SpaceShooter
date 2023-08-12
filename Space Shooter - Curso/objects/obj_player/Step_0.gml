var _right, _up, _left, _down

_right	= keyboard_check(ord("D"));
_left	= keyboard_check(ord("A"));
_up		= keyboard_check(ord("W"));
_down	= keyboard_check(ord("S"));


// Movimentação
x += (_right - _left) * vel;
y += (_down - _up) * vel;

// Convertendo em um método
// Atirando

atirando()

