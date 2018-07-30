mp_sync();

mp_addPosition("Pos",5*room_speed);
mp_setType("Pos",mp_type.SMART);
mp_tolerance("Pos",20);

mp_addBuiltinBasic("basicDrawing",15*room_speed);
mp_setType("basicDrawing",mp_type.SMART);
