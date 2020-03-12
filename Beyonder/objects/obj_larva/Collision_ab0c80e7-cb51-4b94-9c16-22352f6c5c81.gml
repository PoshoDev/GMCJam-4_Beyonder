/// @description 
hit = true
alarm[1] = 8
image_blend = c_maroon

audio_play_sound(snd_thud,4,0)
with other instance_destroy()

if mode = "idle"
	{
	wiggle_ex = 6
	mode = "run"
	image_index = 2
	}
	
hp--