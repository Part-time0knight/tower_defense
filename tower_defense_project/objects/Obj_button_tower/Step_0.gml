/// @description Insert description here
// You can write your code in this editor
ind = ind mod 2;
if (!selector)
	selector = instance_create_layer(x - 136, y + sprite_height/4, "UI", Obj_button_plus);
if (selector.ind)
{
	if (mouse_id && instance_exists(mouse_id))
		instance_destroy(mouse_id);
	mouse_id = instance_create_layer(0, 0, "UI", Obj_mouse_tower);
	if (!ind)
		mouse_id.sprite_index = Spr_tower_gun;
	else if (ind == 1)
		mouse_id.sprite_index = Spr_tower_laser;
	selector.ind = 0;
}