/// @description 
image_speed = 0
depth = -1

scale = 1.5
img_spd = 2*2 *2
spd = 0
dir = choose(-1,1)

alarm[0] = img_spd

mode = "idle"
hit = false

image_xscale = scale
image_yscale = scale

hit_extra_x = 0
hit_extra_y = 0

shoot_extra_x = 0
shoot_extra_y = 0

i = choose (-2,-1,1,2)
path_start(path0,i,path_action_restart,false)

shake = false

if point_distance(xstart,0,obj_char.x,0) < 1000
	with self instance_destroy()
	
hp = 16