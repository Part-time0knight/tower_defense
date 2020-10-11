/// @description Insert description here
// You can write your code in this editor
if (!speed && target && instance_exists(target))
{
	move_towards_point(target.x, target.y, spd);
	image_angle = point_direction(x, y, target.x, target.y);
}
else if (!speed)
{
	instance_destroy();
}