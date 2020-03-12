image_alpha = 0
image_speed = 0
image_index = 2

image_xscale = 1.5
image_yscale = 1.5

direction = point_direction(x,y,mouse_x,mouse_y)
speed = 24*2 //24

with obj_char
	{
	if place_meeting(x,y+1,obj_block)
		if global.shake < 16/2
			global.shake = 16/2
	}
	
alarm[0] = room_speed
alarm[1] = room_speed*0.025