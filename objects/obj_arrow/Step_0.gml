x = obj_player.x;
y = obj_player.y;
image_speed = 0;
image_angle = point_direction(x, y, mouse_x, mouse_y);
if mouse_check_button(mb_left){
    if next{
        alarm[0] = 15;
        next = false;
    }
}
else{
    image_index = 0;   
}


