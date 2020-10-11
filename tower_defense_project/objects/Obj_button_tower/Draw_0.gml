/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_font(Font1);
draw_set_color(c_white);
if (!ind)
{
	draw_sprite(Spr_tower_gun, 0, x - 32, y + sprite_height/2);
	draw_set_color(c_black);
	draw_text(x - 90, y + sprite_height/3.5, "gun");
	
}
else if (ind)
{
	draw_sprite(Spr_tower_laser, 0, x - 32, y + sprite_height/2);
	draw_set_color(c_black);
	draw_text(x - 100, y + sprite_height/3.5, "laser");
}
if (!image_index)
	draw_set_color(c_black);
else
	draw_set_color(c_white);
draw_text(x + sprite_width/19, y + sprite_height/3.5, "tower select");
