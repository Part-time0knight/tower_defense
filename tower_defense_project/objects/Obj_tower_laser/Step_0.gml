/// @description Insert description here
// You can write your code in this editor
if (!Obj_game_rule.pause)
{
	if (target && instance_exists(target))
	{
		target.hp -= damage;
		image_angle = point_direction(x, y, target.x, target.y);
		if (point_distance(x, y, target.x, target.y) > radius)
			target = 0;
	}
	else
	{
		target = collision_circle(x, y, radius, Obj_enemy, false, true);
	}
}