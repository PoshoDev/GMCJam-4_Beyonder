global.scene = "world"

view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])
view_w = camera_get_view_width(view_camera[0])
view_h = camera_get_view_height(view_camera[0])

view_h_start = view_h

instance_create_depth(x,y,-9999,obj_mouse)

depth = 20
image_alpha = 0

global.shake = 0
s_x = 0
s_y = 0

global.scale = 0.40//0.25

/*if debug_mode = false
	window_set_fullscreen(true)
else*/
	window_set_size(960,540)
	
global.font_numbers = font_add_sprite_ext(spr_font_numbers,"0123456789",true,2)

//Base upgrades
global.base_upgrade[0] = 0 //Workshop
global.base_upgrade[1] = 0 //Storage

///Music
sg = audio_create_sync_group(true);
vol_max = 0.4
snd[0] = audio_play_in_sync_group(sg, snd_world);
snd[1] = audio_play_in_sync_group(sg, snd_world_inside);
snd[2] = audio_play_in_sync_group(sg, snd_action);
snd[3] = audio_play_in_sync_group(sg, snd_action_inside);
audio_sound_gain(snd[0], vol_max, 0);
audio_sound_gain(snd[1], 0, 0);
audio_sound_gain(snd[2], 0, 0);
audio_sound_gain(snd[3], 0, 0);
audio_start_sync_group(sg);