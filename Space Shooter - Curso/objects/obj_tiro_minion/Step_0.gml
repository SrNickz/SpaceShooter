/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (instance_exists(obj_boss)) 
{
	direction = point_direction(x, y, obj_boss.x, obj_boss.y);
	image_angle = direction + 90;
}


























// Inherit the parent event
event_inherited();
