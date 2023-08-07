/// @description Insert description here
// You can write your code in this editor





// Inherit the parent event
event_inherited();

// Definindo a minha velocidade
speed = 6;

// Mudo minha direção para o player
// Indo para aquela direção
// Checando se o player existe no jogo
if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	image_angle = direction + 90;
}