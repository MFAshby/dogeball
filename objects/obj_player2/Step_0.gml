//Movement
var lHdir = gamepad_axis_value(0, gp_axislh);
var lVdir = gamepad_axis_value(0, gp_axislv);

var rHdir = gamepad_axis_value(0, gp_axisrh);
var rVdir = gamepad_axis_value(0, gp_axisrv);

gamepad_set_axis_deadzone(0, 0.2);
direction = point_direction(0,0,lHdir,lVdir);
speed = point_distance(0,0,lHdir,lVdir) * 10;

if lHdir >0{
    image_xscale = 1;
}if lHdir <0{
    image_xscale = -1;
}

//Firing
if gamepad_button_check_released(0,gp_shoulderrb) and canFire == true{
    audio_play_sound(wow,1,false);
    instance_destroy(obj_ball_pickedup2);
    var ball = instance_create(x,y,obj_ball_player2);
    ball.direction = point_direction(0,0,rHdir,rVdir);
    if obj_arrow2.image_index == 0{
        ball.speed = 40;
    }else if obj_arrow2.image_index == 1{
        ball.speed = 60;
    }else if obj_arrow2.image_index == 2{
        ball.speed = 75;
    }
    canFire = false;
    canCollide = false;
    alarm[0] = 5;
}

//Collisions
if place_meeting(x,y,obj_ball) and canCollide and not canFire{
    var ball = instance_place(x,y,obj_ball);
    canFire = true;
    with (ball){
        instance_destroy();
    }
    instance_create(x,y,obj_ball_pickedup2);
}

if life == 0{
    sprite_index = spr_explosion;
    image_speed = 1;
}
if image_index = 2{
    audio_play_sound(boom,1,0);
}
if image_index > 23{
    room_goto_next();
}

x = clamp(x,96,room_width-96);
y = clamp(y,105,room_height-105);


