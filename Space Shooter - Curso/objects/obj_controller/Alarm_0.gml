//show_debug_message("Oi");

// Repetindo o mesmo código 
// Criando o inimigo
var _quantidade_de_inimigos = 5 * level;

if (!instance_exists(obj_inimigopolvo)) 
{
	// Só criar inimigos se eu ainda não cheguei no level 10 
	if(level < 10)
	{
		repeat(_quantidade_de_inimigos) 
		{
			cria_inimigos();
		}
	}
	else
	{
		// Criar o boss 
		if(criar_boss == true)
		{
			layer_sequence_create("Entrada_Boss", 960, 544, sq_boss_entrando);	
			criar_boss = false;
		}
	}
}

alarm[0]  = room_speed * 5;


