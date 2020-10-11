/// @description Insert description here
// You can write your code in this editor
if (!pause)
{
	layer_set_visible("UI", false);
	if (Obj_start.free)
		if (enemy_light)
		{
			instance_create_depth(Obj_start.x + Obj_start.sprite_width/2, Obj_start.y + Obj_start.sprite_height/2, Obj_start.depth - 1, Obj_enemy_light);
			enemy_light--;
			enemy_numb++;
		}
		else if (enemy_heavy)
		{
			instance_create_depth(Obj_start.x + Obj_start.sprite_width/2, Obj_start.y + Obj_start.sprite_height/2, Obj_start.depth - 1, Obj_enemy_heavy);
			enemy_heavy--;
			enemy_numb++;
		}
}
else
	layer_set_visible("UI", true);
if (!enemy_numb)
	pause = true;