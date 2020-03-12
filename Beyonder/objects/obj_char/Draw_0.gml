if board = true
	{
	draw_set_color(c_black)
	draw_line_width(x,y-32,obj_balloon.x,obj_balloon.y,10 - 8*(distance_to_object(obj_balloon)/300))
	draw_set_color(c_white)
	}
	
rot = point_direction(x,y,mouse_x,mouse_y)

if (rot > 90 && rot < 270)
	dir = 1
else
	dir = -1

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*dir,image_yscale,rot_body+rot_walk,image_blend,image_alpha)

//Gun
if global.shake > 0
	{
	s_x = irandom_range(-global.shake,global.shake)
	s_y = irandom_range(-global.shake,global.shake)
	}
else
	{
	s_x = 0
	s_y = 0
	}
if global.scene = "world"
	draw_sprite_ext(spr_gun,gun,x-(12*dir)+s_x,y+s_y,image_xscale,image_yscale*dir,rot-180,image_blend,image_alpha)
	
/*draw_set_color(c_red)
draw_self()
draw_set_color(c_white)*/