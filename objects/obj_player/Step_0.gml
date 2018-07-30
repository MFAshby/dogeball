spd = 10;

//Movement
if keyboard_check(ord("D")){
    image_xscale = 1;
    x += spd;
}
if keyboard_check(ord("A")){
    image_xscale = -1;
    x -= spd;
}
if keyboard_check(ord("W")){
    y -= spd;
}
if keyboard_check(ord("S")){
    y += spd;
}

//Firing
if mouse_check_button_released(mb_left) and canFire == true{
    instance_destroy(obj_ball_pickedup);
    audio_play_sound(wow,1,false);
    var ball = instance_create(x,y,obj_ball_player1);
    ball.direction = point_direction(x,y,mouse_x,mouse_y);
    if obj_arrow.image_index == 0{
        ball.speed = 40;
    }else if obj_arrow.image_index == 1{
        ball.speed = 60;
    }else if obj_arrow.image_index == 2{
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
    instance_create(x,y,obj_ball_pickedup);
}

if life == 0{
    sprite_index = spr_explosion;
    image_speed = 1;
}
if image_index = 2{
    audio_play_sound(boom,1,0);
}
if image_index > 23{
    audio_play_sound(boom,1,0);
    room_goto_next();
}
x = clamp(x,96,room_width-96);
y = clamp(y,105,room_height-105);

