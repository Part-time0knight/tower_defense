/// @description Insert description here
// You can write your code in this editor
if (!speed)
{
	pos = collision_point(x, y, Obj_path, false, true);
	way_number = 0;
	for (var i = 0; i < 4 && pos; i++)
	{
		if (pos.path_arr[i] && pos.path_arr[i] != last_path && pos.path_arr[i].free)
		{
			way_arr[way_number++] = pos.path_arr[i];
		}
	}
	if (way_number)
	{
		next_move = irandom(way_number - 1);
		last_path = pos;
		x0 = way_arr[next_move].x + pos.sprite_width/2;
		y0 = way_arr[next_move].y + pos.sprite_height/2;
		move_towards_point(x0, y0, spd);
	}
	if (pos == Obj_finish.id)
		instance_destroy();
}
if (x0 == x && y0 == y)
{
	speed = 0;
}
if (!hp)
{
	instance_destroy();
}