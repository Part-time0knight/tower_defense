/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_red);
if (target && instance_exists(target))
{
	draw_line_width(x, y, target.x, target.y, 2);
}