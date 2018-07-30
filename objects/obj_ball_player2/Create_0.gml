setAlarm = true;
canBounce = false;
alarm[1] = 3;
system = part_system_create();
particle = part_type_create();
part_type_life(particle,5,5);
part_type_sprite(particle, spr_particle,0,0,0);

