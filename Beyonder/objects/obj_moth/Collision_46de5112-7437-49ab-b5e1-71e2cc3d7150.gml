/// @description
if (mode != "follow" && mode != "shoot" && mode !="gohigh" && mode !="drop")
	{
	mode = "follow"
	spd = 0
	alarm[2] = random_range(0.5,3)*room_speed
	path_end()
	}

spd -= 2

if spd < 0
	spd = 0
	
hit = true
alarm[1] = 8
image_blend = c_maroon

audio_play_sound(snd_thud,4,0)
with other instance_destroy()

hp--