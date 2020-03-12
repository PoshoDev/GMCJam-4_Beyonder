switch(mode)
	{
	case "follow":
		if follow = false
			{
			if image_angle < 0
				image_angle += 0.5
			if image_angle > 0
				image_angle -= 0.5
		
			if point_distance(x,y,obj_char.x,obj_char.y-176) > 196 //64//300
				{
				follow = true
				}
			}
		else
			{
			var dis = point_distance(x,y,obj_char.x,obj_char.y-176)
			move_towards_point(obj_char.x,obj_char.y-176, (dis/40)) //4

			if image_angle < point_direction(x,y,obj_char.x,obj_char.y)-270
				image_angle += 0.5 *2
			if image_angle > point_direction(x,y,obj_char.x,obj_char.y)-270
				image_angle -= 0.5 *2
	
			if point_distance(x,y,obj_char.x,obj_char.y-176) < 16
				{
				move_towards_point(obj_char.x,obj_char.y-176,0)
				follow = false
				}
			}
	
		if (image_angle < point_direction(x,y,obj_char.x,obj_char.y)-270+20 && image_angle > point_direction(x,y,obj_char.x,obj_char.y)-270-20)
			image_index = 1
		else
			image_index = 0
			
			
		/*if point_distance(x,y,obj_char.x,obj_char.y) < 150
			{
			image_index = 3
			image_angle = 0
			dis = 0;
			move_towards_point(obj_char.x,obj_char.y-176,0)
			}*/
		
	break;
	
	case "open":
		if obj_char.board = true
			{
			depth = -10
			}
		else
			depth = depth_start
		
		if point_distance(x,y,obj_char.x,obj_char.y-176) > 700
			{
			mode = "follow"
			
			sprite_bump(sprite_index,0,8*2)
			
			with obj_entrance instance_destroy()
			with obj_platform_teeth instance_destroy()
			with obj_balloon_back instance_destroy()
			
			obj_char.board = false
			}
				
	break;
	}
	
sprite_bump_check()