var _right, _up, _left, _down

_right = keyboard_check(ord("D"));
_left = keyboard_check(ord("A"));
_up = keyboard_check(ord("W"));
_down = keyboard_check(ord("S"));

x += (_right - _left) * vel;
y += (_down - _up) * vel

show_debug_message(_down)

