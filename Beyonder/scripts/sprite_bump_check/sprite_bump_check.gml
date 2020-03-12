//if is_undefined(bump_doing)
    //var bump_doing = false
    
if bump_doing = true
    {
    if bump_time <= bump_time_max
        {
        bump_scale = (-bump_time*bump_time)+(bump_time_max*(bump_time)) //-bump_time^2
        bump_time ++
        }
    else
        {
        bump_scale = 0
        bump_doing = false
        }
    }