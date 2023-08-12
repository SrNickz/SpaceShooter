//show_debug_message("Oi");

// Repetindo o mesmo código 
// Criando o inimigo
var _quantidade_de_inimigos = 5 * level;

if (!instance_exists(obj_inimigopolvo)) {
	repeat(_quantidade_de_inimigos) {
		cria_inimigos();
	}
}
alarm[0]  = room_speed * 5;


