/// @description
ok = false;
select = -1
for (i=0; i<=3; i++) //Adds if existing already
	{
	if (obj_char.item[i,0] = image_index && obj_char.item[i,1] < 24)
		{
		select = i
		ok = true;
		break;
		}
	}

if ok = false
	{
	for (i=0; i<=3; i++) //Saves if slot empty
		{
		if obj_char.item[i,1] = 0
			{
			select = i
			ok = true;
			break;
			}
		}
	}

if ok = true
	{
	obj_char.item[i,0] = image_index
	obj_char.item[i,1] ++
	obj_char.item[i,2] = 0.75
	with self instance_destroy()
	audio_play_sound(snd_pick,1,0)
	}