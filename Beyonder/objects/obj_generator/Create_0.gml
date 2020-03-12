randomize();
	
y = room_height/2
move_snap(64,64)

for (i=0; i<room_width/64*8; i++)
	{
	if y >= room_height*0.6
		y -= 64
	else if y < room_height*0.4
		y += 64
	else if irandom_range(1,6) = 1
		y += 64*irandom_range(-4,4)

	with instance_create_depth(x,y,0,obj_block)
		{
		image_index = 3
		alarm[0] = 1
		}

	x += 64
	}
	
obj_char.x = room_width*4
obj_char.y = 128
obj_balloon.x = obj_char.x
obj_balloon.y = obj_char.y