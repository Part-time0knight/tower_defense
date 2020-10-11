/// @description Insert description here
// You can write your code in this editor
if (!Obj_game_rule.pause)
{
	if (target && instance_exists(target))
	{
		if (!alarm[0])
		{
			bullet = instance_create_layer(x, y, "Bullets", Obj_bullet);
			bullet.target = target;
			bullet.damage = damage;
			alarm[0] = reload;
		}
		image_angle = point_direction(x, y, target.x, target.y);
		if (point_distance(x, y, target.x, target.y) > radius)
			target = 0;
	
	}
	else
	{
		target = collision_circle(x, y, radius, Obj_enemy, false, true);
	}
}
