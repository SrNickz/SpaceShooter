/// @description Insert description here
// You can write your code in this editor

if (pode_levar_dano == true)
{
	if (vida_atual > 0) 
	{
		vida_atual -= 10;
	}
	else
	{
		instance_destroy();	
	}
}
instance_destroy(other);	





















