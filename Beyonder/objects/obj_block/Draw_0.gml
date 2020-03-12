if image_index = 1
	{
	check = x-obj_char.x
	if check < 0
		check *= -1
		
	if (check < room_width*0.6)
		{
		draw_self()
		for (i=y+64; i<= room_height; i+=64)
			draw_sprite(spr_grass,0,x,i)
			}
	}