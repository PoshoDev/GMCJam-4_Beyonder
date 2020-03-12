switch(mode)
	{
	case "follow":
		draw_rope()
		draw_sprite_ext(spr_balloon,image_index,x,y,scale,scale-(bump_scale/100),image_angle,image_blend,image_alpha);
	break;

	case "open":
		if global.scene = "base"
			{
			if transition = 2
				{
				if image_alpha > 0
					image_alpha -= 0.1
				}
			draw_set_alpha(image_alpha)
			draw_sprite_ext(spr_balloon,6,x,y,scale,scale-(bump_scale/100),image_angle,image_blend,image_alpha);
	
			draw_set_alpha(1)
			}
		else
			draw_sprite_ext(spr_balloon,3,x,y,scale,scale-(bump_scale/100),image_angle,image_blend,image_alpha);
		
		if obj_char.board = false
			draw_rope()
	break;
	}