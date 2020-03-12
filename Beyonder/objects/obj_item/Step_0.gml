/// @description
if vspeed = 0
	{	
	if rot > 0
		rot-=0.25
	if rot < 0
		rot+=0.25
		
	if spd > 0
		spd-=0.25
	if spd < 0
		spd+=0.25
	}

 
if !place_meeting(x+spd,y,obj_block)
	x += spd;

img_rot -= rot
	
if place_meeting(x,y+1,obj_block)
	{
	gravity_direction = 270;
	gravity = 0;
	}
else
	{
	gravity_direction = 270;
	gravity = grv;
	}