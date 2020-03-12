///MOVEMENT
if lock = false
	{
	if keyboard_check(ord("A"))
		{
		if ! place_meeting(x-spd,y,par_solid)
			{
			move = true;
			x -= spd;
			}
		}
		
	if keyboard_check(ord("D"))
		{
		if ! place_meeting(x+spd,y,par_solid)
			{
			move = true
			x += spd;
			}
		}
		
	if (keyboard_check_released(ord("A")) || keyboard_check_released(ord("D")))
		move = false;


	///JUMPING
	if keyboard_check_pressed(vk_space)
		switch(jump)
			{
			case 0:
				if (place_meeting(x,y+1,par_solid))
					{
					vspeed = jmp;
					rot_walk = 0
					jump = 1;
					audio_play_sound(snd_jump,2,0)
					}
			break
		
			case 1:
				{
				vspeed = jmp;
				rot_walk = 0
				jump = 2;
				audio_play_sound(snd_jump,2,0)
				}
			break
			}
	}
		
	
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

///BALLOON INTERACTIONS
//Teeth	
if place_meeting(x,y+1,(obj_platform_teeth))
	board = true
	
//Entrance
if place_meeting(x-spd,y,(obj_entrance))
	{
	board = true
	global.scene = "base"
	rot_body = 0
	rot_walk = 0
	move = false
	lock = true
	x = obj_balloon.x
	image_xscale = 0.25
	image_yscale = 0.25
	
	with obj_entrance instance_destroy()
	with obj_platform_teeth instance_destroy()
	
	with (obj_balloon) 
		{
		if transition = 0
			{
			transition = 1
			sprite_bump(sprite_index,0,8/2)
			alarm[1] = 8/2
			instance_create_depth(x,y+16,-1000,obj_base)
			instance_create_depth(x,y+16,1,obj_exit)
			}
		}
	}
	
//Exit Base
if keyboard_check_pressed(ord("W"))
	{
	if place_meeting(x,y,obj_exit)
		{
		board = false
		global.scene = "world"
		x = obj_balloon.x
		image_xscale = 1
		image_yscale = 1
		spd *= 4
		jmp *= 4
		grv *= 4
		
		with obj_balloon
			{
			image_alpha = 1
			mode = "follow"
			}
		
		with obj_base instance_destroy()
		with obj_base_interface instance_destroy()
		with obj_exit instance_destroy()
		with obj_balloon_back instance_destroy()
		}
	}
	

///ANIMATIONS
switch (jump)
	{
	case 0:
		rot_body = 0;
		spin_extra = 0
		onespin = false;
	break;
	
	case 1:
		if vspeed < 0
			{
			if (dir = 1 && rot_body > -18)
				rot_body -= 2*2
			else if (dir = -1 && rot_body < 18)
				rot_body += 2*2		
			}
		else if vspeed > 0
			{
			if (dir = -1 && rot_body > -8)
				rot_body -= 2*2
			else if (dir = 1 && rot_body < 8)
				rot_body += 2*2
			}		
	break;
	
	case 2:
		spin_extra = -24
		if dir = -1
			rot_body -= 24*2
		else
			rot_body += 24*2
	break;
	}

//Walk
if (move = true && place_meeting(x,y+1,par_solid))
	{
	switch(walk)
		{
		case 0:
			if rot_walk > -24
				rot_walk -= 12/2 *2
			else
				walk = 1
		break;
		
		case 1:
			if rot_walk < 24
				rot_walk += 12/2 *2
			else
				walk = 0
		break;
		}
	}
else if move = false
	rot_walk = 0
	
///Resets item slot scale
for (i=0; i<=3; i++)
	{
	if item[i,1] <= 0
		{
		item[i,0] = 0
		item[i,1] = 0
		}
	
	if item[i,2] < 1
		item[i,2] += 0.05
	}