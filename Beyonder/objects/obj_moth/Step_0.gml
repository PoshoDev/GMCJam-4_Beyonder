/// @description 
if (mode = "idle" && point_distance(x,y,obj_char.x,obj_char.y) < 300)
	{
	mode = "follow"
	spd = 0
	alarm[2] = random_range(0.5,3)*room_speed
	path_end()
	}

switch (mode)
	{
	case "follow":
		if spd < 10
			spd += 0.25 *2
		//move_towards_point(obj_char.x,obj_char.y,spd)
		if point_distance(x,y,obj_char.x,obj_char.y) > 350
			{
			mp_potential_step_object(obj_char.x,obj_char.y,spd,obj_block)	
		
			if obj_char.x < x
				dir = 1
			else
				dir = -1
			}
		else
			path_start(path1,2,path_action_restart,false)
	break;
	
	case "shoot":
		if spd > 0
			spd -= 0.5 *2
			
		shoot_extra_x = random_range(-0.5,0.5)
		shoot_extra_y = random_range(-0.5,0.5)
		mp_potential_step_object(obj_char.x,obj_char.y,spd,obj_block)	
	break;
	
	case "gohigh":
		mp_linear_step_object(go_x,go_y,12,obj_block);
		
		if obj_char.x < x
				dir = 1
			else
				dir = -1
		
		if dir = 1
			ex_angle = 180
		else
			ex_angle = 0
		image_angle = point_direction(x,y,obj_char.x,obj_char.y)+ex_angle
	break;
	
	case "drop":
		if spd < 48
			spd += 4 *2
			
		mp_linear_step_object(go_x,go_y,spd,obj_block)
		
		if (shake = false && place_meeting(x,y+100,obj_block))
			{
			shake = true
			if global.shake < 32
				global.shake = 32
			}
	break;
	}


if hit = true
	{
	hit_extra_x = random_range(-0.25,0.25)
	hit_extra_y = random_range(-0.25,0.25)
	}