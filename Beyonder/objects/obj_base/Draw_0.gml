/// @description
obj_base_interface.image_index = 1

switch(global.base_upgrade[0])
	{
	case 0:
		if point_distance(obj_char.x,obj_char.y,x+88,y,) < 50
			obj_base_interface.image_index = 2	
	break;
		
	case 1:
		obj_base_interface.image_index = 4
	break;
	}
		
if point_distance(obj_char.x,obj_char.y,x-88,y) < 50
	obj_base_interface.image_index = 3
 
draw_self()