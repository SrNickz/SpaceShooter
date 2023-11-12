/// @description Insert description here
// You can write your code in this editor


#region Estados do boss

if (sprite_index = spr_boss_combate || sprite_index = spr_boss_escuro) 
{
	if(estado_atual == "estado 1") {
		// Iniciando o estado 1
		estado_1();
	}
	else if (estado_atual == "estado 2") {
		// Códigos do estado 2	
		estado_2();
	}
	else if (estado_atual == "estado 3") {
		// Códigos do estado 3	
		estado_3();
	}
	else if(estado_atual == "estado 4") {
		// Códigos do estado 4
		estado_4();
	}
}

if (keyboard_check(vk_enter))
{
	vida_atual -= 100;	
}
#endregion

if (estado_atual == "estado 4") 
{
	if(sprite_index != spr_boss_escuro) sprite_index = spr_boss_escuro;	
}
else
{
	if(sprite_index != spr_boss_combate) sprite_index = spr_boss_combate;
}

// Debug do estado atual
show_debug_message(estado_atual);
show_debug_message(espera_tiro_boss);
show_debug_message(current_time);
















