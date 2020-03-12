/// @description 
if keyboard_check_pressed(ord("F"))
	window_set_fullscreen(!window_get_fullscreen());
	
if keyboard_check_pressed(ord("R"))
	{
	audio_stop_all()
	audio_stop_sync_group(sg)
	game_restart();
	}
	
if keyboard_check_pressed(vk_escape)
	game_end();

if global.shake > 0
	{
	s_x = irandom_range(-global.shake,global.shake)
	s_y = irandom_range(-global.shake,global.shake)
	}
else
	{
	s_x = 0
	s_y = 0
	p_x = camera_get_view_x(view_camera[0])
	p_y = camera_get_view_y(view_camera[0])	
	}
camera_set_view_pos(view_camera[0],obj_char.x-(view_w/2)+s_x,obj_char.y-(view_h/2)+s_y)
global.shake -= 2
	
switch (global.scene)
	{
	case "base":
		if view_h > 240
			{
			view_w /= 1.1//1.05
			view_h /= 1.1//1.05
			}
		else
			if obj_char.lock = true
				{
				obj_char.jmp *= 0.25
				obj_char.spd *= 0.25
				obj_char.grv *= 0.25
				obj_char.lock = false
				}
		camera_set_view_size(view_camera[0],view_w,view_h)
		camera_set_view_border(view_camera[0],view_w,view_h)
	break;
	
	case "world":
		if obj_balloon.transition != 0
			{
			if view_h < view_h_start
				{
				view_w *= 1.1//1.05
				view_h *= 1.1//1.05
				}
			else
				obj_balloon.transition = 0;
					
			camera_set_view_size(view_camera[0],view_w,view_h)
			camera_set_view_border(view_camera[0],view_w,view_h)
			}
	break;
	}
	
///Music
var targ = instance_nearest(obj_char.x,obj_char.y,obj_moth)
if instance_exists(targ)
if (point_distance(obj_char.x,obj_char.y,targ.x,targ.y) < 1000)
	{
	//var val = (point_distance(obj_char.x,obj_char.y,targ.x,targ.y)*vol_max)/1200
	var a = 0
	var b = vol_max
	audio_sound_gain(snd[0], a, 200);
	audio_sound_gain(snd[2], b, 200);
	//audio_sound_gain(snd[0], a, 0);
	//audio_sound_gain(snd[2], b, 0);
	}
else
	{
	var a = vol_max
	var b = 0
	audio_sound_gain(snd[0], a, 200);
	audio_sound_gain(snd[2], b, 200);
	}
	
if global.scene = "base"
	{
	audio_sound_gain(snd[0], 0, 10);
	audio_sound_gain(snd[1], a, 10);
	audio_sound_gain(snd[2], 0, 10);
	audio_sound_gain(snd[3], b, 10);
	}