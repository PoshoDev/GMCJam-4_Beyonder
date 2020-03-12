if global.scene = "base"
	{
	if image_alpha < 1
		image_alpha += 0.025
		
	draw_set_alpha (image_alpha)
	draw_set_color(c_black)
	draw_rectangle(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1920,1080,false)
	
	draw_set_color(c_white)
	draw_set_alpha (0)
	}