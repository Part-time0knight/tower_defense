/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Font1);
draw_set_color(c_white);
if (!ind)
{
	draw_sprite(Spr_enemy_light, 0, x + sprite_width + 32, y + sprite_height/2);
	draw_set_color(c_black);
	draw_text(x + sprite_width + 64, y + sprite_height/3.5, "light:" + string_format(Obj_game_rule.enemy_light, 3, 0));
	
}
else if (ind)
{
	draw_sprite(Spr_enemy_heavy, 0, x + sprite_width + 32, y + sprite_height/2);
	draw_set_color(c_black);
	draw_text(x + sprite_width + 64, y + sprite_height/3.5, "heavy:" + string_format(Obj_game_rule.enemy_heavy, 3, 0));
}
if (!image_index)
	draw_set_color(c_black);
else
	draw_set_color(c_white);
draw_text(x + sprite_width/19, y + sprite_height/3.5, "enemy select");
