/// @description Insert description here
// You can write your code in this editor
ind = ind mod 2;
if (!selector)
	selector = instance_create_layer(x + sprite_width + 136, y + sprite_height/5, "UI", Obj_button_plus);
if (selector.ind)
	if (!ind)
	{
		Obj_game_rule.enemy_light += selector.ind;
		selector.ind = 0;
	}
	else if (ind == 1)
	{
		Obj_game_rule.enemy_heavy += selector.ind;
		selector.ind = 0;
	}