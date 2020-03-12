/// @description 
switch(mode)
	{
	case "shoot":
	case "drop":
		mode = "follow"
		spd = 0
		alarm[2] = random_range(0.5,3)*room_speed

		shoot_extra_x = 0
		shoot_extra_y = 0
		
		image_angle = 0
	break;
	
	case "gohigh":
		mode = "drop"
		shake = false
		go_x = obj_char.x
		go_y = obj_char.y
		alarm[3] = room_speed*1.5
		image_angle = point_direction(x,y,obj_char.x,obj_char.y)+ex_angle+(90*dir)
	break;
	}