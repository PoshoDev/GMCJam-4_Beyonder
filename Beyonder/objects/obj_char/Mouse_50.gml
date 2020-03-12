if (shoot_able = true && global.scene = "world")
	{
	shoot_able = false
	instance_create_depth(x,y,-1,obj_bullet)
	audio_play_sound(snd_shoot,5,0)
	alarm[0] = shoot_space
	
	if dir = -1
		{
		if ! place_meeting(x-16,y,par_solid)
			x -= 16;
		}
	else
		{
		if ! place_meeting(x+16,y,par_solid)
			x += 16;
		}
	}