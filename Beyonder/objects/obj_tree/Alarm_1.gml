/// @description 
hit = false
image_blend = c_white

hit_extra_x = 0
hit_extra_y = 0

i = irandom_range(0,2)
if i = 0
	with instance_create_depth(x,y-128,-3,obj_item)
		image_index = 1

if hp <= 0
	{
	repeat(irandom_range(1,3))
		{
		with instance_create_depth(x,y-128,-3,obj_item)
			image_index = 1
		}
	audio_play_sound(snd_explosion,3,0)
	with self instance_destroy()
	}