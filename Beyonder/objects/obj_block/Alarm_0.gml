image_index = 1

if irandom_range(1,6) = 1 //Creates Tree
		if (instance_position(x-64,y,obj_block) && instance_position(x-128,y,obj_block) && !instance_position(x-64,y,obj_tree))
			{
			instance_create_depth(x-32,y,choose(10,12),obj_tree)
			}
			
if irandom_range(1,20) = 1//Creates Rock
	{
	with instance_create_depth(x,y-32,-3,obj_item)
			image_index = 6
	}
	
if irandom_range(1,25) = 1
	instance_create_depth(x,y-256,-1,obj_larva)
	
if irandom_range(1,100) = 1
	{
	i = choose(1,1,1,1,2,2,3)
	repeat i
		instance_create_depth(x+irandom_range(-64,64),y-256+irandom_range(0,256),-1,obj_moth)
	}

for (i=y+64; i<=room_height; i+=64)
	{
	instance_create_depth(x,i,0,obj_block)
	}	

if (instance_position(x+64,y,obj_block) && instance_position(x-64,y,obj_block))
	for (i=y+64; i<= room_height; i+=64)
		{
		if instance_position(x,i,obj_block)
			{
			if irandom_range(1,50) = 1
				instance_create_depth(x,i,depth-1,obj_metalblock)
				
			with instance_position(x,i,obj_block) instance_destroy()
			}
		}
