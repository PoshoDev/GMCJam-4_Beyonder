/// @description
path_end()

i = irandom_range(1,4)
if i != 4
	{
	mode = "shoot"
	alarm[3] = room_speed*0.5
	image_index = 2
	instance_create_depth(x,y,depth,obj_bullet_moth)
	}
else
	{
	mode = "gohigh"
	alarm[3] = room_speed*3
	go_x = obj_char.x
	go_y = obj_char.y-700
	}