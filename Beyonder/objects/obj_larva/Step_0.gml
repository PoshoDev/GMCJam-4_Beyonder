/// @description 
switch (mode)
	{
	case "idle":		
		if point_distance(x,y,obj_char.x,obj_char.y) < 600
			{
			wiggle_ex = 6
			mode = "run"
			image_index = 2
			}
	break;
	
	case "run":
		if obj_char.x < x
			dir = -1
		else
			dir = 1
	
		if (instance_place(x+spd*8*-dir,y,obj_block) && place_meeting(x,y+1,obj_block) && jump = 0)
				{
				vspeed = jmp;
				jump = 1;
				}
	
		if !place_meeting(x+spd*-dir,y,obj_block)
			x += spd*-dir
	break;
	}
	
//Wagglan'
if (wiggle_sense = 1 && wiggle > 0.2)
	wiggle_sense = -1
if (wiggle_sense = -1 && wiggle < -0.2)
	wiggle_sense = 1	
wiggle += 0.125/8*wiggle_sense*wiggle_ex
	
///GRAVITY
if (place_meeting(x,y+1,(par_solid)))
	{
	gravity_direction = 270;
	gravity = 0;
	}
else
	{
	gravity_direction = 270;
	gravity = grv;
	}
	
///HIT
if hit = true
	{
	hit_extra_x = random_range(-0.25,0.25)
	hit_extra_y = random_range(-0.25,0.25)
	}