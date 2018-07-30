image_speed = 0;
image_index = 0;
if point_in_rectangle(mouse_x,mouse_y,x-50,y-25,x+50,y+25){
    image_index = 1;
    if mouse_check_button_pressed(mb_left){
        audio_play_sound(quack,1,false);
        room_goto(1);
    }
}

