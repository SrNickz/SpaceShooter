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

// Fazer que o level do tiro suba sempre que eu apertar a seta para cima
// Apenas se o level do tiro for menor que cinco

if (keyboard_check_pressed(vk_up)) {
	if (level_tiro < 5) {
	level_tiro += 1;
	}
}

//	Fazer com que o level do tiro diminua em 1 sempre que eu apertar a setinha para baixo
// SE eu apertar pra baixo
if (keyboard_check_pressed(vk_down)) {
	if (level_tiro > 1) { // E meu level de tiro for maior que 1
	level_tiro -= 1;
	}
}

// Diminuir a espera do tiro se eu apertei a seta para a esquerda (10%) -> Multiplicar por 0.9 (90%)
	if (keyboard_check_pressed(vk_left) && espera_tiro > 20) {
		espera_tiro *= .9;
	}	
// E aumentar a espera se apertar a seta pra direita (10%) Multiplicar por 1.1 (110%)
if (keyboard_check_pressed(vk_right)) {
	espera_tiro *= 1.1;
}	

show_debug_message(level_tiro);
show_debug_message(espera_tiro);
show_debug_message(vel);
