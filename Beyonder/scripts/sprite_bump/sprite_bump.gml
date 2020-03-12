///sprite_bump(sprite, angle, time)

//argument0 = bump_sprite
//argument1 = angle
//argument2 = time

//Instance will require the external use of the following variables
//alarm[10]     //(for when the change is made)

//if is_undefined(bump_doing)
//    var bump_doing = false  //(indicates wether the instance is under a bump; boolean)
    
if bump_doing = false
    {
    bump_doing = true
    bump_sprite = argument0//(obvz., duh)
    bump_angle = argument1 //(direction of the bump, then it inverts itself)
    bump_time_max = argument2  //(basically the companion of the silly math function)
    bump_time = 0
    bump_scale = 0
    }