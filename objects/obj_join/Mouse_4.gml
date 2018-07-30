audio_play_sound(quack,1,false);

//Ask player for ip & port
var ip = get_string("Where does yo buddy live?","127.0.0.1");

//Setup client, on success go to waiting room, otherwise end game
if (htme_clientStart(ip, 6510)) {
    obj_connecting.visible = true;
	obj_cancel_connect.visible = true;
} else {
    show_message("Could not start client! Check your network configuration!");
    game_end();
}