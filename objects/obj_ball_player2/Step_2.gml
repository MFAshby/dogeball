if setAlarm == true{
    alarm[0] = 800;
    if speed >=0.5{
        speed -= 0.5;
    }
}
if speed > 0 {
    part_particles_create(system,x,y,particle,1);
}
if speed == 0{
    instance_create(x,y,obj_ball);
    instance_destroy();
}  

