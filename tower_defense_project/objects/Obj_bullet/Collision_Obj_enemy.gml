/// @description Insert description here
// You can write your code in this editor
target = collision_point(x, y, Obj_enemy, false, true);
if (target)
{
	target.hp -= damage;
	instance_destroy();
}