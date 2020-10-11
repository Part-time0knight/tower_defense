/// @description Insert description here
// You can write your code in this editor
pos = collision_point(x, y, Obj_player_pos, false, true);
if (pos)
{
	if (sprite_index == Spr_tower_gun)
	{
		instance_create_depth(pos.x + 32, pos.y + 32, pos.depth - 1, Obj_tower_gun);
		instance_destroy();
	}
	else if (sprite_index == Spr_tower_laser)
	{
		instance_create_depth(pos.x + 32, pos.y + 32, pos.depth - 1, Obj_tower_laser);
		instance_destroy();		
	}
}