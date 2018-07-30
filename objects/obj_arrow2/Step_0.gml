x = obj_player2.x;
y = obj_player2.y;
image_speed = 0;
var Hdir = gamepad_axis_value(0, gp_axisrh);
var Vdir = gamepad_axis_value(0, gp_axisrv);

image_angle = point_direction(0,0,Hdir,Vdir);

if gamepad_button_check(0,gp_shoulderrb){
    if next{
        alarm[0] = 15;
        next = false;
    }
}
else{
    image_index = 0;   
}


