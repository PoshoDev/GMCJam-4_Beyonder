/// @description Return to normal
hit = false
image_blend = c_white

hit_extra_x = 0
hit_extra_y = 0

//Drops
i = irandom_range(0,4)
if i = 0
	with instance_create_depth(x,y-128,-3,obj_item)
		image_index = 4

if hp <= 0
	{
	repeat(irandom_range(1,2))
		{
		with instance_create_depth(x,y-128,-3,obj_item)
			image_index = 3
		}
	audio_play_sound(snd_explosion,3,0)
	with self instance_destroy()
	}