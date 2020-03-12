var check = x-obj_char.x

if check < 0
	check *= -1
		
if (check < room_width*0.6)
	return true
else
	return false