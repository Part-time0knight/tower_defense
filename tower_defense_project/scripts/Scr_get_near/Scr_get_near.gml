// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Scr_get_near(_arr, _x, _y, _width, _height, _obj)
{
	_arr[0] = collision_point(_x, _y - _height, _obj, false, true);//up
	_arr[1] = collision_point(_x + _width, _y, _obj, false, true);//right
	_arr[2] = collision_point(_x, _y + _height, _obj, false, true);//down
	_arr[3] = collision_point(_x - _width, _y, _obj, false, true);//left
	return _arr;
}