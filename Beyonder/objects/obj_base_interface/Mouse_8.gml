var id_1 = -1
var id_2 = -1

switch(image_index)	
	{
	case 2:
		for (i=0; i<=3; i++)
			{
			if (obj_char.item[i,0] = 1 && obj_char.item[i,1] >= 16)
				{
				id_1 = i;
				break;
				}
			}
			
		for (i=0; i<=3; i++)
			{
			if (obj_char.item[i,0] = 6 && obj_char.item[i,1] >= 8)
				{
				id_2 = i;
				break;
				}
			}
			
		if (id_1 != -1 && id_2 != -1)
			{
			obj_char.item[id_1,1] -= 16
			obj_char.item[id_2,1] -= 8
			global.base_upgrade[0] = 1
			audio_play_sound(snd_upgrade,0,0)
			}
	break;
	
	case 4:
		for (i=0; i<=3; i++)
			{
			if (obj_char.item[i,0] = 4 && obj_char.item[i,1] >= 8)
				{
				id_1 = i;
				break;
				}
			}
			
		for (i=0; i<=3; i++)
			{
			if (obj_char.item[i,0] = 3 && obj_char.item[i,1] >= 4)
				{
				id_2 = i;
				break;
				}
			}
			
		if (id_1 != -1 && id_2 != -1)
			{
			obj_char.item[id_1,1] -= 8
			obj_char.item[id_2,1] -= 4
			obj_char.gun = 1
			audio_play_sound(snd_upgrade,0,0)
			}
	break;
	}