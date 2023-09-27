

var _right, _up, _left, _down, _shield

_right	= keyboard_check(ord("D"));
_left	= keyboard_check(ord("A"));
_up		= keyboard_check(ord("W"));
_down	= keyboard_check(ord("S"));
_shield = keyboard_check_pressed(ord("E"));

// Criando o escudo se eu apertei "E" e tenho mais que 0 escudos e o escudo atual não existe

if (_shield && qtd_escudos > 0 && !instance_exists(obj_escudo)) {
	var _escudo = instance_create_layer(x, y, "Escudo", obj_escudo);
	// Eu sou seu alvo
   	_escudo.alvo = id;
	qtd_escudos -= 1;
}

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

//if (x <= 64) x = 64;
//if (x >= 1856) x = 1856;
//if (y <= 64) y = 64;
//if (y >= 1016) y = 1016;

x = clamp(x, 64, 1856);
y = clamp(y, 64, 1024);

//show_debug_message(level_tiro);
//show_debug_message(espera_tiro);
//show_debug_message(vel);
show_debug_message(vida);
